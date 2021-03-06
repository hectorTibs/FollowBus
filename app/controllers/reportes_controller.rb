class ReportesController < ApplicationController
     before_filter :authenticate_user!
  before_action :set_reporte, only: [:show, :edit, :update, :destroy,:compartir]
  # GET /reportes
  # GET /reportes.json
  def index
    @reportes = Reporte.all
  end

  # GET /reportes/1
  # GET /reportes/1.json
  def show
  end

   def compartir
  end


  # GET /reportes/new
  def new
    @reporte = Reporte.new
  end

  # GET /reportes/1/edit
  def edit
  end

  # POST /reportes
  # POST /reportes.json
  def create
    @reporte = Reporte.new(reporte_params)

    #respond_to do |format|
      if @reporte.save
  #     format.html { redirect_to @reporte, notice: 'Reporte was successfully created.' }
      # format.html { render "posts/new", params: { blog_id: @reporte.id }}
    
       # format.json { render :show, status: :created, location: @reporte }
       redirect_to :controller => 'posts', :action => 'new',params: { reporte_id: @reporte }
      
           else
        format.html { render :new }
        format.json { render json: @reporte.errors, status: :unprocessable_entity }
      end
   # end
  end

  # PATCH/PUT /reportes/1
  # PATCH/PUT /reportes/1.json
  def update
    respond_to do |format|
      if @reporte.update(reporte_params)
        format.html { redirect_to @reporte, notice: 'Reporte was successfully updated.' }
        format.json { render :show, status: :ok, location: @reporte }
      else
        format.html { render :edit }
        format.json { render json: @reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportes/1
  # DELETE /reportes/1.json
  def destroy
    @reporte.destroy
    respond_to do |format|
      format.html { redirect_to reportes_url, notice: 'Reporte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporte
      @reporte = Reporte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reporte_params
      params.require(:reporte).permit(:nombre, :edad, :sexo, :hora, :rutaid, :descripcion, :userid)
    end
end
