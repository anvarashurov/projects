class UsersController < ApplicationController

    before_action :require_current_user!, except: [:create, :new]

    def create
        @user = Users.new(user_params)
        if @user.save
            login!(@user)
            render :show
        else 
            render :new
        end
    end

    def index
        render :show
    end

    def show
        @user = Users.find(params[:id])
        render json: @user
    end

    def update
        @user = Users.find(current_user.id)
        if @user.update_attributes(user_params)
            render "User data updated"
        else
            render "Issue updating user data"
        end
    end

    def user_params
        params.require(:user).permit(:name, :password)
    end

end