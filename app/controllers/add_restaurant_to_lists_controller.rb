class AddRestaurantToListsController < ApplicationController


    def index 
        @restsonlists = AddRestaurantToList.all 
        render json: @restsonlists

    end 
    
    def show 
    restaurantlist = AddRestaurantToList.find(params[:id])
    render json: restaurantlist
    end

    def destroy
        # byebug
        @restaurant = AddRestaurantToList.find(params[:id])
        @restaurant.destroy
        # render json: @restaurant
    end 
    
  
        



end
