# SellersController Documetation
#   Available Action
#     - index = action for index view
class SellersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @sellers = Seller.order(first_name: :asc)
  end
end
