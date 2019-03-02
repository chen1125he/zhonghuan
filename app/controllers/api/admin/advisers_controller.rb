class API::Admin::AdvisersController < API::Admin::BaseController
  before_action :load_adviser, only: [:show, :update, :destroy]

  def index
    @advisers = Adviser.order(created_at: :desc).page(params[:page]).per(params[:per])
  end

  def show
  end

  def create
    @adviser = Adviser.new(adviser_params)
    if @adviser.save
      render_ok(id: @adviser.id)
    else
      render_unprocessable_entity(@adviser.errors)
    end
  end

  def update
    if @adviser.update(adviser_params)
      render_ok(id: @adviser.id)
    else
      render_unprocessable_entity(@adviser.errors)
    end
  end

  def destroy
    @adviser.destroy
    render_ok(id: @adviser.id)
  end

  private

  def load_adviser
    @adviser = Adviser.find(params[:id])
  end

  def adviser_params
    params.require(:adviser).permit(
      :name,
      :desc,
      :level,
      :mobile,
      :building_id,
      avatar_attributes: [:id, :_destroy]
    )
  end
end
