class ListsController < ApplicationController
    def show 
        list = List.find(params[:id])
        render json: list
    end

    def index 
        lists = List.all 
        render json: lists 
    end



end
