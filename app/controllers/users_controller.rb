class UsersController < ApplicationController
    def index
        @users = User.order(id: :asc)
    end
    def show
        @user = User.find(params[:id])
    end
    def new
        @user = User.new
    end
    def create
        user = User.create!(user_params)
        redirect_to user_path(user)
    end
    def destroy
        user = User.find(params[:id])
        user.destroy!
        redirect_to users_path
    end
    def update
        user = User.find(params[:id])
        user.destroy
        redirect_to users_path
    end
    def edit
        @user = User.find(params[:id])
    end
    private
    def user_params
        params.require(:user).permit(:name, :age)
    end
end