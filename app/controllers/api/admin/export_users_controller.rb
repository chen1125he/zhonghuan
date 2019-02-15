class API::Admin::ExportUsersController < API::Admin::BaseController
  def index
  	@users = User.all
    render xlsx: 'index', filename: format('用户列表_%<time>s.xlsx', time: Time.current.strftime('%Y-%m-%d'))
  end
end
