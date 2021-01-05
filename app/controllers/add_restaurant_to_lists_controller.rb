class AddRestaurantToListsController < ApplicationController

    def destroy
        @restaurant = AddRestaurantToList.find_by(params[:id])
        @restaurant.destroy
    end 




end
