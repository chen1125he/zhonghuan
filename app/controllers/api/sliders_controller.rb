class API::SlidersController < API::BaseController
  before_action :load_slider, only: [:show]

  def index
    @sliders = Slider.page(params[:page]).per(params[:per])
  end

  def show
  end

  private

  def load_slider
    @slider = Slider.find(params[:id])
  end
end
