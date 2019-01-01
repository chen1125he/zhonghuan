class API::UsersController < API::BaseController
  before_action :load_user, only: [:show]

  def index
    @users = User.all

    @users = @users.where(params[:q]) if params[:q]
    @users = @users.page(params[:page]).per(params[:per])
  end

  def show
  end

  def create
  end

  private

  def load_user
    @user = User.find(params[:id])
  end
end
