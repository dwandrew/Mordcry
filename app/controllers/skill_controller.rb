class SkillController < ApplicationController

    def show
        @skill = Skill.find_by_id(params[:id])
    end

    def index
        @skills = Skill.all
    end

    def destroy
        if params[:skill_id]
        @warrior = Warrior.find_by_id(params[:warrior_id])
        @warrior.skill.delete(Skill.find_by_id(params[:skill_id]))
        redirect_to edit_warrior_path(@warrior)
        else 
            redirect_to edit_warrior_path(params[:warrior_id])
        end
    end

end
