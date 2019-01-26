module WxAPI
  class Qrcode
    def user_building_qrocde(options = {})
      path = format('wxa/getwxacode?access_token=%s', TokenManager.weapp_access_token)
      WxAPI::Client.new.post(path, json: options)
    end
  end
end
