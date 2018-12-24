class API::Admin::InformationsController < API::Admin::BaseController
  before_action :load_information, only: [:show, :update, :destroy]

  def index
    @informations = Information.includes(:image).page(params[:page]).per(params[:per])
  end

  def show
  end

  def create
    @information = Information.new(information_params)
    if @information.save
      render_ok(id: @information.id)
    else
      render_unprocessable_entity(@information.errors)
    end
  end

  def update
    if @information.update(information_params)
      render_ok(id: @information.id)
    else
      render_unprocessable_entity(@information.errors)
    end
  end

  def destroy
    @information.destroy
    render_ok(id: @information.id)
  end

  private

  def load_information
    @information = Information.find(params[:id])
  end

  def information_params
    params.require(:information).permit(
      :title,
      :link_type,
      :link,
      :position,
      :desc,
      :public_at,
      :base_number,
      image_attributes: [:id]
    )
  end
end
