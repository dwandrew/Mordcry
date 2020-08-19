class SpellsController < ApplicationController

def show
end

def index
end

def destroy
    if params[:spell_id]
    @warrior = Warrior.find_by_id(params[:warrior_id])
    @warrior.spell.delete(Spell.find_by_id(params[:spell_id]))
    redirect_to edit_warrior_path(@warrior)
    else 
        redirect_to edit_warrior_path(params[:warrior_id])
    end
end

end
