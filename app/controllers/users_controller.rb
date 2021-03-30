class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)

        redirect_to user_path(@user)
    end

    def destroy
        @user = User.find(params[:id])

        @user.delete

        redirect_to users_path
    end

    def gender
        @gender = User.find_by(user.gender)
    end

    private 

    def user_params
        params.require(:user).permit(:name, :img_url, :gender)
    end

    def gender
        
    end

end
