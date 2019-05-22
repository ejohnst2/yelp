class Admin::RestaurantsController < ApplicationController
  def index
    # @restaurants = current_user.restaurants
    @restaurants = Restaurant.where(chef: "Gordon Ramsey")
  end
end
