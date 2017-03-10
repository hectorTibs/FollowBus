class CamionesController < ApplicationController
  before_action :set_camione, only: [:show, :edit, :update, :destroy]

  # GET /camiones
  # GET /camiones.json
  def index
    @camiones = Camione.all
  end

  # GET /camiones/1
  # GET /camiones/1.json
  def show
  end

  # GET /camiones/new
  def new
    @camione = Camione.new
  end

  # GET /camiones/1/edit
  def edit
  end

  # POST /camiones
  # POST /camiones.json
  def create
    @camione = Camione.new(camione_params)

    respond_to do |format|
      if @camione.save
        format.html { redirect_to @camione, notice: 'Camione was successfully created.' }
        format.json { render :show, status: :created, location: @camione }
      else
        format.html { render :new }
        format.json { render json: @camione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /camiones/1
  # PATCH/PUT /camiones/1.json
  def update
    respond_to do |format|
      if @camione.update(camione_params)
        format.html { redirect_to @camione, notice: 'Camione was successfully updated.' }
        format.json { render :show, status: :ok, location: @camione }
      else
        format.html { render :edit }
        format.json { render json: @camione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camiones/1
  # DELETE /camiones/1.json
  def destroy
    @camione.destroy
    respond_to do |format|
      format.html { redirect_to camiones_url, notice: 'Camione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camione
      @camione = Camione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camione_params
      params.require(:camione).permit(:clave, :nombre, :tiporuta, :municipioinicio, :municipiofin)
    end
end
