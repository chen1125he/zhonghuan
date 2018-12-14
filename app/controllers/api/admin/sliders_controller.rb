class API::Admin::SlidersController < API::Admin::BaseController
  before_action :load_slider, only: [:show, :update, :destroy]

  def index
    @sliders = Slider.page(params[:page]).per(params[:per])
  end

  def show
  end

  def create
    @slider = Slider.new(slider_params)
    if @slider.save
      render_ok(id: @slider.id)
    else
      render_unprocessable_entity(@slider.errors)
    end
  end

  def update
    if @slider.update(slider_params)
      render_ok(id: @slider.id)
    else
      render_unprocessable_entity(@slider.errors)
    end
  end

  def destroy
    @slider.destroy
    render_ok(id: @slider.id)
  end

  private

  def load_slider
    @slider = Slider.find(params[:id])
  end

  def slider_params
    params.require(:slider).permit(:name, :image, :link_type, :link, :position)
  end
end
