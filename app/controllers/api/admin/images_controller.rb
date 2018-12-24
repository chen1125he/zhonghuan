class API::Admin::ImagesController < API::Admin::BaseController
  before_action :load_image, only: [:show, :update]

  def index
    @images = Image.page(params[:page]).per(params[:per])
  end

  def show
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      render_ok(id: @image.id, url: @image.file.url)
    else
      render_unprocessable_entity(@image.errors)
    end
  end

  def update
    if @image.update(image_params)
      render_ok(id: @image.id, url: @image.file.url)
    else
      render_unprocessable_entity(@image.errors)
    end
  end

  private

  def load_image
    @image = Image.find(params[:id])
  end

  def image_params
    pp params
    params.require(:image).permit(
      :file
    )
  end
end
