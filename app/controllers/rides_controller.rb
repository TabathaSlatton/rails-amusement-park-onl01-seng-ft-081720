class RidesController < ApplicationController

    def create
        @ride = Ride.create(ride_params)
        @user = User.find_by_id(session[:user_id])
        alert = @ride.take_ride 
        redirect_to user_path(@user), notice: alert
    end


    private

    def ride_params
        params.require(:ride).permit(:attraction_id, :user_id)
    end
end
