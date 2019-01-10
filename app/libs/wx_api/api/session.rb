module WxAPI
  module API
    class Session
      attr_reader :client

      def initialize
        @client = Client.new
      end

      def authenticate(appid, secret, app_session)
        path = '/sns/jscode2session'
        params = { appid: appid, secret: secret, js_code: app_session.fetch('code'), grant_type: 'authorization_code' }
        session = client.get(path, params: params)
        session_key = session.fetch('session_key')
        openid = session.fetch('openid')

        encrypted_data = app_session['encrypted_data']
        iv = app_session['iv']
        if encrypted_data.present? && iv.present?
          data = decrypt_weapp_data(encrypted_data, iv, session_key, appid)
        else
          data = { unionId: session['unionid'] }
        end

        { session_key: session_key, uid: openid, raw: data }.with_indifferent_access
      end

      def get_user_info(encrypted_data, iv, session_key, appid)
        decrypt_weapp_data(encrypted_data, iv, session_key, appid)
      end

      def get_phone_number(encrypted_data, iv, session_key, appid)
        decrypt_weapp_data(encrypted_data, iv, session_key, appid)
      end

      private

      def decrypt_weapp_data(encrypted_data, iv, session_key, appid)
        cipher = OpenSSL::Cipher::AES128.new(:CBC)
        cipher.decrypt
        cipher.iv = Base64.decode64(iv)
        cipher.key = Base64.decode64(session_key)

        decrypted_data = cipher.update(Base64.decode64(encrypted_data)) + cipher.final
        data = ActiveSupport::JSON.decode(decrypted_data).with_indifferent_access

        raise 'Invalid buffer' unless data.fetch('watermark')['appid'] == appid
        data
      end
    end
  end
end
