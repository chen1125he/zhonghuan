class API::Admin::SessionsController < API::Admin::BaseController
  skip_before_action :ensure_authenticated_admin, only: [:create]

  def create
    admin = ::Admin.find_by(name: params[:name])
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      @current_admin = admin
      render_ok(admin_id: admin.id, name: admin.name)
    else
      render_unauthorized('你输入的用户名或者密码错误.')
    end
  end

  def show
    render_ok(admin_id: current_admin.id, name: current_admin.name)
  end

  def

  def destroy
    unauthenticate_admin
    render_no_content
  end
end
