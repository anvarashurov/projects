class SessionsController < ApplicationController

    def create 
        if !current_user.nil?
            render '/users/show'
        else
            @user = Users.find_by_credentials(params[:user][:name], params[:user][:password])
            if @user
                login!(@user)
                render '/users/show'
            else 
                render '/sessions/new'
            end
        end
    end

    def destroy
        if current_user
            @user = current_user
            logout!
            render :new
        else 
            redirect_to new_session_url
        end
    end
    
end