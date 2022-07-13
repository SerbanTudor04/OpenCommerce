class OcomStoresController < ApplicationController
  before_action :set_ocom_store, only: %i[ show edit update destroy ]

  # GET /ocom_stores or /ocom_stores.json
  def index
    @ocom_stores = OcomStore.all
  end

  # GET /ocom_stores/1 or /ocom_stores/1.json
  def show
  end

  

  def getDefautlStore
    @ocom_store = OcomStore.find_by()

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
