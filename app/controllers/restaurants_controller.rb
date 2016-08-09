class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant.save!
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def show_me_the_reviews
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # These are 'strong params', Rails is asking us to 'whitelist'
  # all the params it will accept when assigning params to the
  # fields in a restaurant
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end
end