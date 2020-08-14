class AbilitiesController < ApplicationController
  def show
    @ability = Ability.find_by_id(params[:id])
  end
end
