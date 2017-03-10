class IncidenciaController < ApplicationController
  before_action :set_incidencium, only: [:show, :edit, :update, :destroy]

  # GET /incidencia
  # GET /incidencia.json
  def index
    @incidencia = Incidencium.all
  end

  # GET /incidencia/1
  # GET /incidencia/1.json
  def show
  end

  # GET /incidencia/new
  def new
    @incidencium = Incidencium.new
  end

  # GET /incidencia/1/edit
  def edit
  end

  # POST /incidencia
  # POST /incidencia.json
  def create
    @incidencium = Incidencium.new(incidencium_params)

    respond_to do |format|
      if @incidencium.save
        format.html { redirect_to @incidencium, notice: 'Incidencium was successfully created.' }
        format.json { render :show, status: :created, location: @incidencium }
      else
        format.html { render :new }
        format.json { render json: @incidencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidencia/1
  # PATCH/PUT /incidencia/1.json
  def update
    respond_to do |format|
      if @incidencium.update(incidencium_params)
        format.html { redirect_to @incidencium, notice: 'Incidencium was successfully updated.' }
        format.json { render :show, status: :ok, location: @incidencium }
      else
        format.html { render :edit }
        format.json { render json: @incidencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidencia/1
  # DELETE /incidencia/1.json
  def destroy
    @incidencium.destroy
    respond_to do |format|
      format.html { redirect_to incidencia_url, notice: 'Incidencium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incidencium
      @incidencium = Incidencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incidencium_params
      params.require(:incidencium).permit(:EmpresaId, :RutaId, :Comentario, :Compartir, :RedSocial, :PostRed)
    end
end
