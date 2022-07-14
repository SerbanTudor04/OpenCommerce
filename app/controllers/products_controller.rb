class ProductsController < ApplicationController

    def getProductsByStore
        @products = Product.where(:store_id=>params[:store_id])
        render json: @products
    end


    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :store_id, :image)
    end

    def set_product
        @product = Product.find(params[:id])
    end


end
