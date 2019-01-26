class API::Admin::WeappSettingsController < API::Admin::BaseController
  before_action :load_weapp_setting, only: [:show]
  def show
  end

  private

  def load_weapp_setting
    @weapp_setting = WeappSetting.first
  end
end
