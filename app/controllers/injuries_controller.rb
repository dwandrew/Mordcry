class InjuriesController < ApplicationController

    def show
        @injury = Injury.find_by_id(params[:id])
    end

    def index
        if params[:name]
            @injuries = Injury.name_search(params[:name])
        else
            @injuries = Injury.all
        end
    end

    def destroy
        if params[:injury_id]
        @warrior = Warrior.find_by_id(params[:warrior_id])
        @warrior.injury.delete(Injury.find_by_id(params[:injury_id]))
        redirect_to edit_warrior_path(@warrior)
        else 
            redirect_to edit_warrior_path(params[:warrior_id])
        end
    end


end
