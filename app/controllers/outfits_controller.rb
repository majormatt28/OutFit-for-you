class OutfitsController < ApplicationController
    def index
        @outfits = Outfit.all
    end

    def show
        @outfit = Outfit.find(params[:id])
        #byebug
    end
end
