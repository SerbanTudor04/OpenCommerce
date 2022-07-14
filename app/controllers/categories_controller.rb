class CategoriesController < ApplicationController

    def getCategoriesByStore
        # select only name, store_id, parent_id

        @categories = OcomProductsCategory.where(:store_id=>params[:store_id]).select(:id,:name, :parent_id)
        render json: @categories
    end
end
