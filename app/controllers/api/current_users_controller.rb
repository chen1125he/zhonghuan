class API::CurrentUsersController < API::BaseController
  def show
  end

  def update
    current_user.update(raw: raw_params)
  end

  private

  def raw_params
    current_user.raw.merge(params[:user_info])
  end
end
