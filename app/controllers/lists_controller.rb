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
        
        if list.valid?
            render json: list
        else 
            # display error
            byebug
            flash[:my_errors] = planet.errors.full_messages
        end
    end

    def update
        list = List.find(params[:id])
        list.update(list_params)
        render json: list
    end 

    def destroy 
        list = List.find(params[:id])
        list.destroy
        # byebug
    end 




    private 

    def list_params 
        params.permit(:title, :description, :restaurants, :user_id)
    end



end
