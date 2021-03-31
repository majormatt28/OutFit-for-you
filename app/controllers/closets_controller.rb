class ClosetsController < ApplicationController
    def index
        @my_clothes = @current_user.clothings
        #byebug
    end

    def show
        # byebug
        # @closet = Closet.find(params[:id])
    end
end
