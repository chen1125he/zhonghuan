class API::BuildingVisitorsController < API::BaseController
  before_action :load_property

  def index
    @visitors = []
  end

  private

  def load_property
    @building = Building.find(params[:building_id])
  end
end
