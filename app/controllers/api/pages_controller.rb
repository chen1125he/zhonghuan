class API::PagesController < API::BaseController
  before_action :load_page, only: [:show]

  def index
    @pages = Page.page(params[:page]).per(params[:per])
  end

  def show
  end

  private

  def load_page
    @page = Page.find(params[:id])
  end
end
