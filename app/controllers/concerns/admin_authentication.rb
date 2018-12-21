module AdminAuthentication
  extend ActiveSupport::Concern

  included do
    before_action :ensure_authenticated_admin
  end

  private

  def ensure_authenticated_admin
    unless authenticate_admin(session[:admin_id])
      render json: { message: '在操作之前请先登录', retcode: 0 }, status: :unauthorized
    end
  end

  def authenticate_admin(admin_id)
    if authenticated_admin = Admin.find_by(id: admin_id)
      session[:admin_id] = authenticated_admin.id
      session[:admin_token] = authenticated_admin.password_digest
      @current_admin = authenticated_admin
    end
  end

  def unauthenticate_admin
    @current_admin = nil
    session[:admin_id] = nil
    session[:admin_token] = nil
  end

  def current_admin
    @current_admin
  end
end
