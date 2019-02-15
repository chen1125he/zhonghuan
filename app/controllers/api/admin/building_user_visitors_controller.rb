class API::Admin::BuildingUserVisitorsController < API::Admin::BaseController
  before_action :load_building, only: [:destroy]

  def destroy
    @building.building_visitors.where.not(invitor_id: nil).each(&:soft_delete)
    render_ok(building_id: @building.id)
  end

  private

  def load_building
    @building = Building.find(params[:building_id])
  end
end
