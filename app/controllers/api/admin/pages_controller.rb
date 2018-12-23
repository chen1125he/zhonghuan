class API::Admin::PagesController < API::Admin::BaseController
  before_action :load_page, only: [:show, :update, :destroy]

  def index
    @pages = Page.page(params[:page]).per(params[:per])
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      render_ok(id: @page.id)
    else
      render_unprocessable_entity(@page.errors)
    end
  end

  def show
  end

  def update
    if @page.update(page_params)
      render_ok(id: @page.id)
    else
      render_unprocessable_entity(@page.errors)
    end
  end

  def destroy
    @page.destroy
    render_ok(id: @page.id)
  end

  private

  def page_params
    params.require(:page).permit(
      :name,
      page_items_attributes: [
        :id,
        :position,
        :item_type,
        :content,
        :link_type,
        :link,
        :_destroy,
        image_attributes: [:id]
      ]
    )
  end

  def load_page
    @page = Page.find(params[:id])
  end
end
