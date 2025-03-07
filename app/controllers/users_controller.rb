class UsersController < ApplicationController
    def show
        @user = User.find(session[:user_id])
        if @user
            render json: @user
        else
            render json: {error: "Not Authorized"}, status: :not_authorized
        end
    end
end
