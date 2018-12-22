class API::BuildingsController < API::BaseController
  before_action :load_building, only: [:show]

  def index
    @buildings = Building.page(params[:page]).per(params[:per])
  end

  def show
  end

  private

  def load_building
    @building = Building.find(params[:id])
  end
end
