class UsersController < ApplicationController

    def create 
        
    end

    def index
        render json: Users.all
    end

    def show
        @user = Users.find(params[:id])
        #render plain: "Heyyyy, welcome :)"
        render json: @user
    end

    def update

    end

    def user_params

    end

end