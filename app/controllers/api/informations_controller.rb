class API::InformationsController < API::BaseController
  before_action :load_information, only: [:show]
  after_action :increment_read_number, only: [:show]

  def index
    @informations = Information.page(params[:page]).per(params[:per])
  end

  def show
  end

  private

  def load_information
    @information = Information.find(params[:id])
  end

  def increase_read_number
    @information.increment!(:read_number)
  end
end
