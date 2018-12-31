class API::SessionsController < API::BaseController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    appid = Figaro.env.WX_WEAPP_APPID
    secret = Figaro.env.WX_WEAPP_APPSECRET
    authorization = WxAPI.api_session.authenticate(appid, secret, session_params)
    logger.info authorization.inspect
    user = User.find_or_create_by_authorization!(authorization)
    logger.info user.inspect
    if user.present?
      session = user.sessions.create!(session_key: authorization.fetch(:session_key))
      render_created(token: Auth.encode(token: session.token))
    else
      render_unauthorized
    end
  end

  private

  def session_params
    params.permit(:code, :encrypted_data, :iv)
  end
end
