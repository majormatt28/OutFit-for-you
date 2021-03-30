class UsersController < ApplicationController
    skip_before_action :logged_in?, only: [:index, :new, :create]

    if @current_user == @user
        render :show
    else
        redirect_to users_path
    end
    
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])

        if @current_user == @user 
            render :show
          else  
            flash[:message] = "You can only see your own profile"
            redirect_to users_path
        end
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

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        @user.update(user_params)

        redirect_to user_path(@user)
    end

    private 

    def user_params
        params.require(:user).permit(:name, :avatar, :gender)
    end

end
