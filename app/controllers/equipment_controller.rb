class EquipmentController < ApplicationController
    before_action :require_login, except: [:index]


def index
@equipment = Equipment.all
@abilities = Ability.all
@armour = Armour.all
end

def sell
    if params[:equipment_id]
    @warrior = Warrior.find_by_id(params[:warrior_id])
    @weapon = Equipment.find_by_id(params[:equipment_id])
    @warrior.warband.gold_crowns+= (@weapon.cost/2)
    @warrior.warband.save
    redirect_to equipment_delete_path(warrior_id: @warrior.id, equipment_id: @weapon.id)
    else 
        redirect_to edit_warrior_path(params[:warrior_id])
    end
end

def destroy
    if params[:equipment_id]
    @warrior = Warrior.find_by_id(params[:warrior_id])
    @warrior.equipment.delete(Equipment.find_by_id(params[:equipment_id]))
    redirect_to edit_warrior_path(@warrior)
    else 
        redirect_to edit_warrior_path(params[:warrior_id])
    end
end

def sell_armour
    if params[:armour_id]
    @warrior = Warrior.find_by_id(params[:warrior_id])
    @armour = Armour.find_by_id(params[:armour_id])
    @warrior.warband.gold_crowns+= (@armour.cost/2)
    @warrior.warband.save
    redirect_to equipment_delete_armour_path(warrior_id: @warrior.id, armour_id: @armour.id)
    else 
        redirect_to edit_warrior_path(params[:warrior_id])
    end
end

def destroy_armour
    if params[:armour_id]
    @warrior = Warrior.find_by_id(params[:warrior_id])
    @warrior.armour.delete(Armour.find_by_id(params[:armour_id]))
    redirect_to edit_warrior_path(@warrior)
    else 
        redirect_to edit_warrior_path(params[:warrior_id])
    end
end

private
    def require_login
        unless helpers.logged_in?
        flash[:alert] = "You must be logged in to access this section"
        redirect_to '/'
        end
    end
end
