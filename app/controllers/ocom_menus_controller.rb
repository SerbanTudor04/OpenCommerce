class OcomMenusController < ApplicationController
  before_action :set_ocom_menu, only: %i[ show edit update destroy ]

  # GET /ocom_menus or /ocom_menus.json
  def index
    @ocom_menus = OcomMenu.all
  end

  # # GET /ocom_menus/1 or /ocom_menus/1.json
  # def show
  # end

  # # GET /ocom_menus/new
  # def new
  #   @ocom_menu = OcomMenu.new
  # end

  # # GET /ocom_menus/1/edit
  # def edit
  # end

  # # POST /ocom_menus or /ocom_menus.json
  # def create
  #   @ocom_menu = OcomMenu.new(ocom_menu_params)

  #   respond_to do |format|
  #     if @ocom_menu.save
  #       format.html { redirect_to ocom_menu_url(@ocom_menu), notice: "Ocom menu was successfully created." }
  #       format.json { render :show, status: :created, location: @ocom_menu }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @ocom_menu.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /ocom_menus/1 or /ocom_menus/1.json
  # def update
  #   respond_to do |format|
  #     if @ocom_menu.update(ocom_menu_params)
  #       format.html { redirect_to ocom_menu_url(@ocom_menu), notice: "Ocom menu was successfully updated." }
  #       format.json { render :show, status: :ok, location: @ocom_menu }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @ocom_menu.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /ocom_menus/1 or /ocom_menus/1.json
  # def destroy
  #   @ocom_menu.destroy

  #   respond_to do |format|
  #     format.html { redirect_to ocom_menus_url, notice: "Ocom menu was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocom_menu
      @ocom_menu = OcomMenu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ocom_menu_params
      params.require(:ocom_menu).permit(:name, :parent_id, :redirect_to)
    end
end
