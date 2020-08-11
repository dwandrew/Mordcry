class EquipmentController < ApplicationController
    before_action :require_login


def index
@equipment = Equipment.all
@abilities = Ability.all
end


private
    def require_login
        unless helpers.logged_in?
        flash[:alert] = "You must be logged in to access this section"
        redirect_to '/'
        end
    end
end
