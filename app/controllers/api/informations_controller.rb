class API::InformationsController < API::BaseController
  before_action :load_information, only: [:show]

  def index
    @informations = Information.page(params[:page]).per(params[:per])
  end

  def show
  end

  private

  def load_information
    @information = Information.find(params[:id])
  end
end
