class ProductsController < ApplicationController

    def getProductsByCategory
        @products = Product.where(:category_id=>params[:category_id])
        render json: @products
    end


    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :category_id, :image)
    end

    def set_product
        @product = Product.find(params[:id])
    end


end
