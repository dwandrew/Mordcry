class SpellsController < ApplicationController

def show
end

def index
    if params[:category]
        @spells = Spell.category_search(params[:category])
    else
    @ratman_list = Spell.all.select {|s| s.spell_warband == "Ratmen"} 
    @prayers = Spell.all.select {|s| s.spell_warband == "Witch Hunters, The Sisterhood"} 
    @chaos_list =Spell.all.select {|s| s.spell_warband == "Chaos Cultists"}
    @necromancy_list = Spell.all.select {|s| s.spell_warband == "The Undead"}
    end
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
