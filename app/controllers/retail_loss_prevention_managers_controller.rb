class RetailLossPreventionManagersController < ApplicationController
  before_action :set_retail_loss_prevention_manager, only: [:show, :edit, :update, :destroy]

  # GET /retail_loss_prevention_managers
  # GET /retail_loss_prevention_managers.json
  def index
    @retail_loss_prevention_managers = RetailLossPreventionManager.all
  end

  # GET /retail_loss_prevention_managers/1
  # GET /retail_loss_prevention_managers/1.json
  def show
  end

  # GET /retail_loss_prevention_managers/new
  def new
    @retail_loss_prevention_manager = RetailLossPreventionManager.new
  end

  # GET /retail_loss_prevention_managers/1/edit
  def edit
  end

  # POST /retail_loss_prevention_managers
  # POST /retail_loss_prevention_managers.json
  def create
    @retail_loss_prevention_manager = RetailLossPreventionManager.new(retail_loss_prevention_manager_params)

    respond_to do |format|
      if @retail_loss_prevention_manager.save
        format.html { redirect_to @retail_loss_prevention_manager, notice: 'Retail loss prevention manager was successfully created.' }
        format.json { render :show, status: :created, location: @retail_loss_prevention_manager }
      else
        format.html { render :new }
        format.json { render json: @retail_loss_prevention_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retail_loss_prevention_managers/1
  # PATCH/PUT /retail_loss_prevention_managers/1.json
  def update
    respond_to do |format|
      if @retail_loss_prevention_manager.update(retail_loss_prevention_manager_params)
        format.html { redirect_to @retail_loss_prevention_manager, notice: 'Retail loss prevention manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @retail_loss_prevention_manager }
      else
        format.html { render :edit }
        format.json { render json: @retail_loss_prevention_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retail_loss_prevention_managers/1
  # DELETE /retail_loss_prevention_managers/1.json
  def destroy
    @retail_loss_prevention_manager.destroy
    respond_to do |format|
      format.html { redirect_to retail_loss_prevention_managers_url, notice: 'Retail loss prevention manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retail_loss_prevention_manager
      @retail_loss_prevention_manager = RetailLossPreventionManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retail_loss_prevention_manager_params
      params.require(:retail_loss_prevention_manager).permit(:phone, :email, :location_id)
    end
end
