class SessionsController < ApplicationController
    def new

    end

    def create
        # binding.pry
        session[:user_id] = params[:user_name]
        if !params[:user_name] || params[:user_name].empty?
            redirect_to '/signin'
        else 
            redirect_to user_path(session[:user_id])
        end
    end

    def destroy
        reset_session
        redirect_to '/'
    end


end