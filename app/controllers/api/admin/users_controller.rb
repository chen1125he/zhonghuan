class API::Admin::UsersController < API::Admin::BaseController
  def index
    @users = User.all.page(params[:page]).per(params[:per])
  end
end
