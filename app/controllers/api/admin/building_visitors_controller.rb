class API::Admin::BuildingVisitorsController < API::Admin::BaseController
  before_action :load_building, only: [:destroy]

  def destroy
    @building.without_invitor_building_visitors.each(&:soft_delete)
    render_ok(building_id: @building.id)
  end

  private

  def load_building
    @building = Building.find(params[:building_id])
  end
end
