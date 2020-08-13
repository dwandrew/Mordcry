class WarbandsController < ApplicationController
    before_action :new_warband, only: [:new]
    before_action :require_login, except: [:index, :show]
    before_action :find_warband, only: [:edit, :update, :show, :destroy]
    before_action :check_owner, only: [:edit, :destroy]
    
        def new
        end

        def create
            @user = current_user
            @warband = @user.warbands.build(warband_params)
            if @warband.valid?
            @warband.save
            redirect_to warband_path(@warband)
            else
                flash[:alert] = warband_alerts
                redirect_to new_warband_path
            end
        end

        def index
            if params[:user_id]
                @warbands = User.find(params[:user_id]).warbands
            elsif params[:warband]
                @warbands = Warband.warband_search(params[:warband])
            elsif params[:rating]
                @warbands = Warband.rating_search(params[:rating])
            elsif helpers.logged_in?
                @warbands = current_user.warbands
            elsif Warband.all ==[] 
                flash[:alert] = "No Currently created Warbands on Record, Feel free to Sign in and make one!"
                redirect_to '/'
            else
                @warbands = Warband.all
            end
        end

        def show
            unless @warband
            flash[:alert] = "No Current Warband of that record, Feel free to make one!"
            redirect_to '/'
            end
        end

        def add_to_warband
            @warband = Warband.find_by_id(params[:warrior][:warband_id])
            check_owner
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
            number: params[:warrior][:number],
            warband_type: @warband.warband_type,
            is_hero: params[:warrior][:is_hero],
            cost: params[:warrior][:cost])
            if params[:warrior][:skills]
                params[:warrior][:skills].each do |s|
                    @warrior.skill << Skill.find_by_name(s)
                end
            end
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
            redirect_to warband_path(@warband)
        end

        def destroy
            find_warband
            @warband.destroy
            redirect_to warbands_path
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

        def warband_user
            @warband.user == helpers.current_user
        end

        def warband_alerts
            alert = []
            @warband.errors.messages.each do |k,v|
                alert << "#{k.to_s.capitalize} #{v.join(", ")} "
            end
            alert.join()
        end

        def require_login
            unless helpers.logged_in?
              flash[:alert] = "You must be logged in to access this section"
              redirect_to '/'
            end
        end

        def check_owner
            unless warband_user
                flash[:alert] = "Not permissable to Edit others warbands"
                redirect_to '/'
            end
        end

end
