class API::BuildingsController < API::BaseController
  before_action :load_building, only: [:show]
  before_action :load_invitor, only: [:show]
  before_action :add_visitor, only: [:show]

  def index
    @buildings = Building.page(params[:page]).per(params[:per])
  end

  def show
  end

  private

  def load_building
    @building = Building.find(params[:id])
  end

  def load_building
    @invitor = Building.find_by(invitor_id: params[:invitor_id])
  end

  def add_visitor
    @building.without_invitor_building_visitors.find_or_create_by!(visitor: current_user)
    @building.building_visitors.find_or_create_by!(visitor: current_user, invitor: @invitor) if @invitor.present?
  end
end
