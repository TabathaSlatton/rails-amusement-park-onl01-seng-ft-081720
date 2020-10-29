class SessionsController < ApplicationController
    def new

    end

    def create
        session[:user_id] = params[:id]
        if !params[:id] || params[:id].empty?
            redirect_to '/signin'
        else 
            redirect_to '/'
        end
    end
end