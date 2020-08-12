class SkillController < ApplicationController

    def show
        @skill = Skill.find_by_id(params[:id])
    end

    def index
        @skills = Skill.all
    end
end
