class UsersController < ApplicationController

    def index
        @users = User.all 
        render json: @users
    end


    def show 
        user = User.find(params[:id])
        render json: user
    end

    def log_me_in 
        @user = User.find_by(name: params[:loginName])

        if @user
            render json: @user
        else
            render json: {error: "User doesn't exist"}
        end 
    end 

end
