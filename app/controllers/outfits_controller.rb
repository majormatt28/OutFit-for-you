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
        @shirts = shirts
        @pants = pants
        @accessories = accessories
        @shoes = shoes
    end 

    def create
        @outfit = Outfit.create(outfit_params)
    
        redirect_to outfits_path(@outfit.id)
    end

    private

    def outfit_params
        params.require(:outfit).permit(:name)
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
