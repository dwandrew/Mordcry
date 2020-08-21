class WarriorsController < ApplicationController
    before_action :require_login, except: [:show]
    before_action :find_warrior, only: [:edit, :update, :show, :destroy]
    before_action :new_warband_warrior, only: [:new, :select_warrior]
    
    
    def new
        if warrior_user
            redirect_to warbands_select_warrior_path(warband_id: @warband.id)
        else
            flash[:alert] = "Not permissable to Edit others warbands"
            redirect_to '/'
        end
    end

    def select_warrior
    end

    

    def create
        
    end

    def edit
        
        if warrior_user
            (4-@warrior.equipment.length).times {@warrior.equipment.build}
            (3-@warrior.armour.length).times {@warrior.armour.build}
            @warrior.skill.build
            @warrior.mutations.build
            @warrior.injury.build
            @warrior.spell.build
            @warrior
            else
                flash[:alert] = "Not permissable to view others warriors"
                redirect_to '/'
        end
    end

    def update
      
        @warrior.update(warrior_params)
        redirect_to warband_path (@warrior.warband.id)
    end

    def show
        
    end


    def index
        if params[:type]
            @warriors = Warrior.type_search(params[:type])
        elsif params[:name]
            @warriors = Warrior.name_search(params[:name])
        elsif params[:warband_name]
            warband = Warband.warband_name_search(params[:warband_name])
     
            @warriors = warband.map {|w| w.warriors}.flatten
        else
        @warriors = helpers.current_user.warriors
        end
    end

    def destroy
  
        if warrior_user
            @warband = @warrior.warband.id
            @warrior.destroy
            redirect_to warband_path (@warband)
            else
                flash[:alert] = "Not permissable to view others warriors"
                redirect_to '/'
        end
    end
    
    def equipment_sell
    end
    
    def eqiupment_destroy
    end

    private
        def warrior_params
            params.require(:warrior).permit(
                :name,
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
                :injuries,
                :active,
                :wounds,
                :skills_list,
                :equipment_list,
                :close_combat_attacks_bonus,
                :close_combat_damage_bonus,
                :ranged_attacks_bonus,
                :ranged_damage_bonus,
                equipment_attributes: [:id],
                armour_attributes: [:id],
                skill_attributes: [:id],
                mutations_attributes: [:id],
                injury_attributes: [:id],
                spell_attributes: [:id]
            )
        end
    
        def new_warband_warrior
            @warband = Warband.find_by_id(params[:warband_id])
            @warrior = @warband.warriors.build
        end
        
        def find_warrior
            @warrior = Warrior.find_by_id(params[:id])
        end



        def warrior_user
            @warrior.warband.user == helpers.current_user
        end

        def require_login
            unless helpers.logged_in?
              flash[:alert] = "You must be logged in to access this section"
              redirect_to '/'
            end
        end

        def check_owner
            unless warrior_user
                flash[:alert] = "Not permissable to Edit others warbands"
                redirect_to '/'
            end
        end


end
