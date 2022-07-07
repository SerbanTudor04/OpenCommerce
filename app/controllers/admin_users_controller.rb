class AdminUsersController < ApplicationController
  before_action :set_admin_user, only: %i[ show edit update destroy ]

  # GET /admin_users or /admin_users.json
  def index
    @admin_users = AdminUser.all
  end

  # GET /admin_users/1 or /admin_users/1.json
  def show
  end

  # GET /admin_users/new
  def new
    @admin_user = AdminUser.new
  end

  # GET /admin_users/1/edit
  def edit
  end

  # POST /admin_users or /admin_users.json
  def create
    @admin_user = AdminUser.new(admin_user_params)

    respond_to do |format|
      if @admin_user.save
        format.html { redirect_to admin_user_url(@admin_user), notice: "Admin user was successfully created." }
        format.json { render :show, status: :created, location: @admin_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_users/1 or /admin_users/1.json
  def update
    respond_to do |format|
      if @admin_user.update(admin_user_params)
        format.html { redirect_to admin_user_url(@admin_user), notice: "Admin user was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_users/1 or /admin_users/1.json
  def destroy
    @admin_user.destroy

    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: "Admin user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_user
      @admin_user = AdminUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_user_params
      params.require(:admin_user).permit(:username, :hashed_password, :email)
    end
end
