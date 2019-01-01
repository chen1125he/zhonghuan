class API::Admin::ExportUsersController < API::Admin::BaseController
  def create
  	@users = User.all
    render xlsx: 'create', filename: format('用户列表.xlsx', Time.current.strftime('%Y-%m-%d'))
  end
end
