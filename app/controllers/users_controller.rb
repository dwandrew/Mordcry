class UsersController < ApplicationController
before_action :new_user, only: [:new]
before_action :find_user, except: [:new, :create, :login]

def new
end

def create
    @user =  User.new(user_params)
    if @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user)
    else 
    render :new
    end
end

def show
if session[:user_id] != @user.id
    flash[:message] = "You do not have permission to access that"
    redirect_to '/'
end
end

def login
end

def signin
    binding.pry
    redirect_to users_path(@user)
end

def index
end

def edit
end

def update
end

def destroy
end

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
