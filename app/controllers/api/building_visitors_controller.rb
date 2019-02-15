class API::BuildingVisitorsController < API::BaseController
  before_action :load_property
  before_action :load_building_visitor, only: [:show]

  def index
    @building_visitors = case params[:mine].to_i
                              when 0
                                @building.without_invitor_building_visitors.page(params[:page]).per(params[:per])
                              else
                                @building.building_visitors.where('building_visitors.invitor_id' => current_user.id).page(params[:page]).per(params[:per])
                              end
  end

  def show
    GenerateBuildingVisitorQrcodeWorker.new.perform(@building_visitor.id) unless @building_visitor.qrcode.present?
    @building_visitor.reload
  end

  private

  def load_property
    @building = Building.find(params[:building_id])
  end

  def load_building_visitor
    @building_visitor = @building.building_visitors.find_or_create_by!(visitor: current_user, invitor: nil)
  end
end
