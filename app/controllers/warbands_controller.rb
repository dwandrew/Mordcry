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

        def add_to_warband
            @warband = Warband.find_by_id(params[:warrior][:warband_id])
            if (@warband.gold_crowns- params[:warrior][:cost].to_i) <= 0
            flash[:alert] = "Do not have enough gold for that!"
            redirect_to warband_path(@warband)
            else
            @warrior = @warband.warriors.build(
            warrior_type: params[:warrior][:warrior_type],
            exp: params[:warrior][:exp],
            move: params[:warrior][:move],
            strength: params[:warrior][:strength],
            toughness: params[:warrior][:toughness],
            agility: params[:warrior][:agility],
            wounds: params[:warrior][:wounds],
            bravery: params[:warrior][:bravery],
            skills: params[:warrior][:skills],
            number: params[:warrior][:number],
            warband_type: @warband.warband_type,
            is_hero: params[:warrior][:is_hero],
            cost: params[:warrior][:cost])
            @warrior.save
            @warband.gold_crowns-= @warrior.cost
            @warband.save
            redirect_to warband_path(@warband)
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

        def warrior_params
            params.require(:warrior).permit(warrior: [
                :agility,
                :bravery,
                :cost,
                :exp,
                :is_hero,
                :move,
                :number,
                :skills,
                :strength,
                :toughness,
                :warband_id,
                :warband_type,
                :warrior_type,
                :wounds
            ])
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
