class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    #get all
    @restaurants = Restaurant.all()
  end

  def show
    #got restaurant from set_restaurant
  end

  def new 
    # pass empty new restaurant to form
    @restaurant = Restaurant.new
  end

  def create 
    # create new restaurant instance
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      # when it saves, go to the show page
      redirect_to restaurant_path(@restaurant)
    else
      # when it DOESNT save, show the form again
      render 'new'
      # show the new.html.erb view
    end
  end
  private
  # STRONG PARAMS 
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
