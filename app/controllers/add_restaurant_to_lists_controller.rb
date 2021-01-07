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
        render json: @restaurant
    end 
    
    def create 
        addRestaurantToList = AddRestaurantToList.create(add_restautant_to_list_params)
        # byebug
        render json: addRestaurantToList
    end
  
        
    private 

    def add_restautant_to_list_params 
        params.permit(:restaurant_id, :list_id)
    end


end
