class MutationsController < ApplicationController

    def index
        @mutations = Mutation.all
    end

    def show
        @mutation = Mutation.find_by_id(params[:id])
    end


end
