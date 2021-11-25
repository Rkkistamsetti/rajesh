class BuyheresController < ApplicationController
  before_action :set_buyhere, only: %i[ show edit update destroy ]

  # GET /buyheres or /buyheres.json
  def index
    @buyheres = Buyhere.all
  end

  # GET /buyheres/1 or /buyheres/1.json
  def show
  end

  # GET /buyheres/new
  def new
    @buyhere = Buyhere.new
  end

  # GET /buyheres/1/edit
  def edit
  end

  # POST /buyheres or /buyheres.json
  def create
    @buyhere = Buyhere.new(buyhere_params)

    respond_to do |format|
      if @buyhere.save
        format.html { redirect_to @buyhere, notice: "Buyhere was successfully created." }
        format.json { render :show, status: :created, location: @buyhere }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @buyhere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyheres/1 or /buyheres/1.json
  def update
    respond_to do |format|
      if @buyhere.update(buyhere_params)
        format.html { redirect_to @buyhere, notice: "Buyhere was successfully updated." }
        format.json { render :show, status: :ok, location: @buyhere }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @buyhere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyheres/1 or /buyheres/1.json
  def destroy
    @buyhere.destroy
    respond_to do |format|
      format.html { redirect_to buyheres_url, notice: "Buyhere was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyhere
      @buyhere = Buyhere.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def buyhere_params
      params.fetch(:buyhere, {})
    end
end
