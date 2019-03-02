module WxAPI
  class Qrcode
    def user_building_qrocde(options = {})
      page = options.delete(:page)
      user_id = options.delete(:user_id)
      building_id = options.delete(:building_id)
      path = format('wxa/getwxacodeunlimit?access_token=%s', TokenManager.weapp_access_token)
      WxAPI::Client.new.post(path, json: { page: page, scene: "#{user_id}!#{building_id}" })
    end
  end
end
