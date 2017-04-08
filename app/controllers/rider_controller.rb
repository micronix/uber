class RiderController < ApplicationController
    def query
        @ride = Ride.find_by rider_id: current_user.id
        if @ride
            @driver = User.find_by id: @ride.driver_id
        end
    end
    
    def save_ride
        driver = User.find_by active: true
        
        if driver
            ride = Ride.new
            ride.rider_id = current_user.id
            ride.driver_id = driver.id
            ride.save
            redirect_to '/rider'
        else
            @message = 'There are no available drivers'
        end
    end
end
