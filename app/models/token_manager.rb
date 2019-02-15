class TokenManager
  WEAPP_APPID = Figaro.env.WX_WEAPP_APPID
  WEAPP_APPSECRET = Figaro.env.WX_WEAPP_APPSECRET

  def self.weapp_access_token
    token = $redis.get('weapp_access_token_cache_key')
    return token if token

    path = format('cgi-bin/token?appid=%s&secret=%s&grant_type=client_credential', WEAPP_APPID, WEAPP_APPSECRET)
    r = WxAPI::Client.new.get(path)

    new_access_token = r['access_token']
    new_access_token_expires_in = r['expires_in']
    $redis.set('weapp_access_token_cache_key', new_access_token, ex: new_access_token_expires_in - 30.seconds)
    new_access_token
  end
end
