class API::Admin::BaseController < API::BaseController
  include AdminAuthentication

  skip_before_action :authenticate_user!
  skip_before_action :ensure_authenticated_admin
end
