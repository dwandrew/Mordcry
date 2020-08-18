class WarriorsController < ApplicationController
    before_action :require_login, except: [:show]

    def new
        @warband = Warband.find_by_id(params[:warband_id])
        @warrior = @warband.warriors.build
        
        render 'select_warrior'
    end

    

    def create
        
    end

    def edit
        find_warrior
        if warrior_user
            (4-@warrior.equipment.length).times {@warrior.equipment.build}
            (3-@warrior.armour.length).times {@warrior.armour.build}
            @warrior.skill.build
            @warrior.mutations.build
            @warrior.injury.build
            else
                flash[:alert] = "Not permissable to view others warriors"
                redirect_to '/'
        end
    end

    def update
        find_warrior
        @warrior.update(warrior_params)
        redirect_to warband_path (@warrior.warband.id)
    end

    def show
        find_warrior
    end

    def index
    end

    def destroy
        find_warrior
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
                equipment_attributes: [:id],
                armour_attributes: [:id],
                skill_attributes: [:id],
                mutations_attributes: [:id],
                injury_attributes: [:id]
            )
        end
    
        def new_warrior
            @warrior = Warrior.new
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


end
