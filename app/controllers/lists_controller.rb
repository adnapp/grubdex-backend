class ListsController < ApplicationController
    def show 
        list = List.find(params[:id])
        render json: list
    end

    def index 
        lists = List.all 
        render json: lists 
    end

    def create 
        list = List.create(list_params)
        # byebug
        render json: list
    end

    




    private 

    def list_params 
        params.permit(:title, :description, :restaurants, :user_id)
    end



end
