class WarriorsController < ApplicationController
    before_action :require_login

    def new
        @warband = Warband.find_by_id(params[:warband_id])
        @warrior = @warband.warriors.build
        render 'select_warrior'
    end

    def create
    end

    def edit
    end

    def update
    end

    def show
    end

    def index
    end

    def destroy
    end
    
    private
        def warrior_params
            params.require(:warrior).permit(:name, :warband_type, :gold_crowns, :wyrdstone_shards, :warband_rating)
        end
    
        def new_warrior
            @warrior = Warrior.new
        end
    
        def find_warrior
            @warrior = Warrior.find_by_id(params[:id])
        end

        def require_login
            unless helpers.logged_in?
              flash[:alert] = "You must be logged in to access this section"
              redirect_to '/'
            end
        end


end
