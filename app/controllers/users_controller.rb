class UsersController < ApplicationController


private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

    def new_user
        @user = User.new
    end

    def find_user
        @user = User.find_by_id(params[:id])
    end

end
