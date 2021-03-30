class OutfitClothingsController < ApplicationController
    def new
        @outfit_clothing = OutfitClothing.new

    end

    def create
        @outfit_clothing = OutfitClothing.find(params[:id])

        @outfit_clothing.create(outfit_clothing_params)

        redirect_to new_outfit_clothing_path
    end

    private

    def outfit_clothing_params
        params.require(:outfit_clothing).permit(:outfit_id, :clothing_id)
    end
end
