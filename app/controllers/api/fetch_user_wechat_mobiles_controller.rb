class API::FetchUserWechatMobilesController < API::BaseController
  def create
    appid = Figaro.env.WX_WEAPP_APPID
    session_key = current_session.session_key

    user_phone_number_data = WxAPI.api_session.get_phone_number(params[:encrypted_data], params[:iv], session_key, appid)
    render_ok(phone: user_phone_number_data['purePhoneNumber'])
  end
end
