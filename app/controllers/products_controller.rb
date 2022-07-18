class ProductsController < ApplicationController

    def getProductsByCategory
        @products = OcomProduct.where(:category_id=>params[:category_id])
        render json: @products
    end



end
