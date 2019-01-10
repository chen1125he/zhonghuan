class API::Admin::WeappSettingsController < API::Admin::BaseController
  before_action :load_weapp_setting, only: [:show, :update]
  def show
  end

  def update
    if @weapp_setting.update(weapp_setting_params)
      render_ok(id: @weapp_setting.id)
    else
      render_unprocessable_entity(@weapp_setting.errors)
    end
  end

  private

  def load_weapp_setting
    @weapp_setting = WeappSetting.find_or_create_by!(id: 1)
  end

  def weapp_setting_params
    params.require(:weapp_setting).permit(
      :information_enable,
      :share_content,
      share_picture_attributes: [:id, :_destroy]
    )
  end
end
