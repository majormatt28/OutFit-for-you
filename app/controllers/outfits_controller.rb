class OutfitsController < ApplicationController
    def index
        @outfits = Outfit.all
    end

    def show
        @outfit = Outfit.find(params[:id])
        #byebug
    end

    def new
        @outfit = Outfit.new
        # @shirts = shirts
        # @pants = pants
        # @accessories = accessories
        # @shoes = shoes
    end 

    def create
        @outfit = Outfit.create(outfit_params)
    
        redirect_to outfits_path(@outfit.id)
    end

    def edit
        @outfit = Outfit.find(params[:id])
        # @shirts = shirts
        # @pants = pants
        # @accessories = accessories
        # @shoes = shoes
        # byebug
    end

    def update
        @outfit = Outfit.find(params[:id])
        #byebug
        @outfit.update(outfit_params)

        redirect_to outfit_path(@outfit)
    end


    private

    def outfit_params
        params.require(:outfit).permit(:name, :clothing_ids, :shirts_id, :pants_id, :shoes_id, :accessories_id)
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
