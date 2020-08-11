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
        find_warrior
        3.times {@warrior.equipment.build} unless @warrior.equipment.length >= 3
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
        @warband = @warrior.warband.id
        @warrior.destroy
        redirect_to warband_path (@warband)
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
                equipment_attributes: [:id]
                
            )
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
