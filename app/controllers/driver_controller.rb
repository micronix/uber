class DriverController < ApplicationController
    def status
    end
    
    def update_status
        current_user.active = params[:active]
        current_user.save
        redirect_to '/driver'
    end
end
