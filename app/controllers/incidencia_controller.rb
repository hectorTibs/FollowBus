class IncidenciaController < ApplicationController
  before_action :set_incidencia, only: [:show, :edit, :update, :destroy]

  # GET /incidencia
  # GET /incidencia.json
  def index
    @incidencia = Incidencia.all
  end

  # GET /incidencia/1
  # GET /incidencia/1.json
  def show
  end

  # GET /incidencia/new
  def new
    @Incidencia = Incidencia.new
  end

  # GET /incidencia/1/edit
  def edit
  end

  # POST /incidencia
  # POST /incidencia.json
  def create
    @Incidencia = Incidencia.new(Incidencia_params)

    respond_to do |format|
      if @Incidencia.save
        format.html { redirect_to @Incidencia, notice: 'Incidencia was successfully created.' }
        format.json { render :show, status: :created, location: @Incidencia }
      else
        format.html { render :new }
        format.json { render json: @Incidencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidencia/1
  # PATCH/PUT /incidencia/1.json
  def update
    respond_to do |format|
      if @Incidencia.update(Incidencia_params)
        format.html { redirect_to @Incidencia, notice: 'Incidencia was successfully updated.' }
        format.json { render :show, status: :ok, location: @Incidencia }
      else
        format.html { render :edit }
        format.json { render json: @Incidencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidencia/1
  # DELETE /incidencia/1.json
  def destroy
    @Incidencia.destroy
    respond_to do |format|
      format.html { redirect_to incidencia_url, notice: 'Incidencia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Incidencia
      @Incidencia = Incidencia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def Incidencia_params
      params.require(:Incidencia).permit(:EmpresaId, :RutaId, :Comentario, :Compartir, :RedSocial, :PostRed)
    end
end
