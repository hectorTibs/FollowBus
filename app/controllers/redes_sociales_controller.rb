class RedesSocialesController < ApplicationController
    before_filter :authenticate_user!
  before_action :set_redes_sociale, only: [:show, :edit, :update, :destroy]

  # GET /redes_sociales
  # GET /redes_sociales.json
  def index
    @redes_sociales = RedesSociale.all
  end

  # GET /redes_sociales/1
  # GET /redes_sociales/1.json
  def show
  end

  # GET /redes_sociales/new
  def new
    @redes_sociale = RedesSociale.new
  end

  # GET /redes_sociales/1/edit
  def edit
  end

  # POST /redes_sociales
  # POST /redes_sociales.json
  def create
    @redes_sociale = RedesSociale.new(redes_sociale_params)

    respond_to do |format|
      if @redes_sociale.save
        format.html { redirect_to @redes_sociale, notice: 'Redes sociale was successfully created.' }
        format.json { render :show, status: :created, location: @redes_sociale }
      else
        format.html { render :new }
        format.json { render json: @redes_sociale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redes_sociales/1
  # PATCH/PUT /redes_sociales/1.json
  def update
    respond_to do |format|
      if @redes_sociale.update(redes_sociale_params)
        format.html { redirect_to @redes_sociale, notice: 'Redes sociale was successfully updated.' }
        format.json { render :show, status: :ok, location: @redes_sociale }
      else
        format.html { render :edit }
        format.json { render json: @redes_sociale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redes_sociales/1
  # DELETE /redes_sociales/1.json
  def destroy
    @redes_sociale.destroy
    respond_to do |format|
      format.html { redirect_to redes_sociales_url, notice: 'Redes sociale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redes_sociale
      @redes_sociale = RedesSociale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def redes_sociale_params
      params.require(:redes_sociale).permit(:Clave, :Nombre)
    end
end
