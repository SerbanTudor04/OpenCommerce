class OcomStoresController < ApplicationController
  before_action :set_ocom_store, only: %i[ show edit update destroy ]

  # GET /ocom_stores or /ocom_stores.json
  def index
    @ocom_stores = OcomStore.all
  end

  # GET /ocom_stores/1 or /ocom_stores/1.json
  def show
  end

  # GET /ocom_stores/1/ocom_menus
  def getChildMenusByStoreId
    @ocom_menus = execute_statement("select parent.id as parent_id,child.id as id,	child.name as name,	child.redirect_to as href from ocom_menus child  join ocom_menus parent ON child.parent_id  = parent.id and parent.store_id=#{params[:id]} order by 1")
    render json: @ocom_menus
  end

  def getParentsMenusByStoreId
    @ocom_menus = execute_statement("select id, name , redirect_to as href from ocom_menus where store_id=#{params[:id]} and parent_id=0")
    render json: @ocom_menus
  end

  private

  
    def execute_statement(sql)
      results = ActiveRecord::Base.connection.execute(sql)
    
      if results.present?
        return results
      else
        return nil
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_ocom_store
      @ocom_store = OcomStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ocom_store_params
      params.require(:ocom_store).permit(:name, :content_menu_id, :description, :owner_id)
    end
end
