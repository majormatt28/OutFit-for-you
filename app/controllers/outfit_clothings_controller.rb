class OutfitClothingsController < ApplicationController
    def new
        @outfit_clothing = OutfitClothing.new

        @outfits = Outfit.all
        @clothings = Clothing.all

        @shirts = shirts
        @pants = pants
        @accessories = accessories
        @shoes = shoes
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

    def shirts
        Clothing.select do |clothing| 
            clothing.category == "Shirt"
        end
    end

    def pants
        Clothing.select do |clothing| 
            clothing.category == "Pant"
        end
    end

    def accessories
        Clothing.select do |clothing| 
            clothing.category == "Accessory"
        end
    end

    def shoes
        Clothing.select do |clothing| 
            clothing.category == "Shoe"
        end
    end
end
