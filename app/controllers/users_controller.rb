class UsersController < ApplicationController
    before_action :require_login, only: [:show]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            redirect_to '/signup'
        end
    end

    def show
        @user = User.find_by_id(params[:id])
    end


    private

    def user_params
        params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :admin)
    end

    def require_login
        unless logged_in?
            redirect_to '/'
        end
    end

    def logged_in?
        !!session[:user_id]
    end
end
