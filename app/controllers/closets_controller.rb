class ClosetsController < ApplicationController
    def index
        @closets = Closet.all
        byebug
    end

    def show
        # byebug
        # @closet = Closet.find(params[:id])
    end
end
