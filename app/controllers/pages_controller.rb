# PageController Documetation
#   Available Action
#     - home = action for home view
#     - about us = action for about us view
#     - pre selling = action for pre selling view
#     - ready for occupancy = action for ready for occupancy view
#     - promos = action for promos view
#     - unit = action for specific unit
class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :available_locations, on: %i[about_us promo]
  before_action :unit_types, on: %i[home pre_selling ready_for_occupancy]

  def home
    @carousels = Carousel.all
  end

  def about_us; end

  def pre_selling; end

  def ready_for_occupancy; end

  def promos
    @promos = Promo.all
  end

  def unit
    @unit = Unit.find(params[:id])
  end

  def credential
    @message = nil
    user = User.find_by_email(params[:user]["email"])
    if user.present?
      @message = if user.valid_password?(params[:user]["password"])
        "Valid credential"
      else
        "Invalid credential"
      end
    end
    render json: @message.to_json
  end

  private

    def unit_types
      @unit_types = UnitType.all.includes(:units)
    end

    def available_locations
      @available_locations = Unit.pluck(:city_id).uniq
    end
end
