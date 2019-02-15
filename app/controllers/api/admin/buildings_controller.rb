class API::Admin::BuildingsController < API::Admin::BaseController
  before_action :load_building, only: [:show, :update, :destroy]

  def index
    @buildings = Building.page(params[:page]).per(params[:per])
  end

  def show
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      render_ok(id: @building.id)
    else
      render_unprocessable_entity(@building.errors)
    end
  end

  def update
    if @building.update(building_params)
      render_ok(id: @building.id)
    else
      render_unprocessable_entity(@building.errors)
    end
  end

  def destroy
    @building.soft_delete
    render_ok(id: @building.id)
  end

  private

  def load_building
    @building = Building.find(params[:id])
  end

  def building_params
    params.require(:building).permit(
      :price_per_sqm,
      :name,
      :phone,
      :address,
      :latitude,
      :longitude,
      :developer,
      :property_company,
      :opening_date,
      :delivery_date,
      :property_type,
      :property_year,
      :car_position_count,
      :decoration_standard,
      :green_rate,
      :plot_ratio,
      :property_fee_desc,
      :base_count,
      :cover_link,
      tags: [],
      cover_attributes: [:id, :_destroy],
      poster_attributes: [:id, :_destroy],
      building_displays_attributes: [
        :id,
        :name,
        :_destroy,
        building_display_pictures_attributes: [
          :id,
          :name,
          :_destroy,
          pictures_attributes: [:id, :_destroy]
        ]
      ],
      building_description_attributes: [
        :id,
        :sub_desc,
        :_destroy,
        building_description_details_attributes: [:id, :title, :desc, :_destroy]
      ]
    )
  end
end
