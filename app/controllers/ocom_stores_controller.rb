class OcomStoresController < ApplicationController
  before_action :set_ocom_store, only: %i[ show edit update destroy ]

  # GET /ocom_stores or /ocom_stores.json
  def index
    @ocom_stores = OcomStore.all
  end

  # GET /ocom_stores/1 or /ocom_stores/1.json
  def show
  end

  # GET /ocom_stores/new
  # def new
  #   @ocom_store = OcomStore.new
  # end

  # GET /ocom_stores/1/edit
  # def edit
  # end

  # POST /ocom_stores or /ocom_stores.json
  # def create
  #   @ocom_store = OcomStore.new(ocom_store_params)

  #   respond_to do |format|
  #     if @ocom_store.save
  #       format.html { redirect_to ocom_store_url(@ocom_store), notice: "Ocom store was successfully created." }
  #       format.json { render :show, status: :created, location: @ocom_store }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @ocom_store.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /ocom_stores/1 or /ocom_stores/1.json
  # def update
  #   respond_to do |format|
  #     if @ocom_store.update(ocom_store_params)
  #       format.html { redirect_to ocom_store_url(@ocom_store), notice: "Ocom store was successfully updated." }
  #       format.json { render :show, status: :ok, location: @ocom_store }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @ocom_store.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /ocom_stores/1 or /ocom_stores/1.json
  # def destroy
  #   @ocom_store.destroy

  #   respond_to do |format|
  #     format.html { redirect_to ocom_stores_url, notice: "Ocom store was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocom_store
      @ocom_store = OcomStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ocom_store_params
      params.require(:ocom_store).permit(:name, :content_menu_id, :description, :owner_id)
    end
end
