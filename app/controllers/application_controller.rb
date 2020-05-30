# Base Controller
# ApplicationController Documetation
#   Available Action
#     - location = get specific location that depends on the value of id parameter
#     - unit = get specific unit that depends on the value of city_id parameter
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :null_session

  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from Exception, with: :not_found
  rescue_from ActionController::RoutingError, with: :not_found

  def raise_not_found
    raise ActionController::RoutingError, "No route matches #{params[:unmatched_route]}"
  end

  # redirect to dashboard after login
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || "/admin"
  end

  # redirect to root page after logging out
  def after_sign_out_path_for(_resource_or_scope)
    "/"
  end

  def location(id)
    City.upcase_city(id)
  end

  def units(city_id)
    Unit.city(city_id)
  end

  def not_found
    respond_to do |format|
      format.html { render file: "#{Rails.root}/public/404", layout: true, status: :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end

  helper_method :location
  helper_method :units
end
