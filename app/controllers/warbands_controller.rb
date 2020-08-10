class WarbandsController < ApplicationController
    before_action :new_warband, only: [:new]
    before_action :require_login
    before_action :find_warband, only: [:edit, :update, :show, :destroy]
    
        def new
        end

        def create
            @user = current_user
            @warband = @user.warbands.build(warband_params)
            @warband.save
            redirect_to warband_path(@warband)
        end

        def index
            @warbands = current_user.warbands
        end

        def show
            unless @warband.user == current_user
            flash[:alert] = "Not permissable to view others warbands"
            redirect_to '/'
            end
        end

        def edit
        end

        def update
            @warband.update(warband_params)
            @warband.save
            redirect_to warband_path(@warband)
        end

        def destroy
        end
private
        def warband_params
            params.require(:warband).permit(:name, :warband_type, :gold_crowns, :wyrdstone_shards, :warband_rating)
        end
    
        def new_warband
            @warband = Warband.new
        end
    
        def find_warband
            @warband = Warband.find_by_id(params[:id])
        end

        def require_login
            unless helpers.logged_in?
              flash[:alert] = "You must be logged in to access this section"
              redirect_to '/'
            end
        end

end
