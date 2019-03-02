class API::Admin::BaseController < API::BaseController
  # include AdminAuthentication

  skip_before_action :authenticate_user!
end
