class ObjetosController < ApplicationController
  before_action :set_objeto, only: [:show, :edit, :update, :destroy]

  # GET /objetos
  # GET /objetos.json
  def index
    @objetos = Objeto.all
  end

  # GET /objetos/1
  # GET /objetos/1.json
  def show
  end

  # GET /objetos/new
  def new
    @objeto = Objeto.new
  end

  # GET /objetos/1/edit
  def edit
  end

  # POST /objetos
  # POST /objetos.json
  def create
    @objeto = Objeto.new(objeto_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: 'Objeto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @objeto }
      else
        format.html { render action: 'new' }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objetos/1
  # PATCH/PUT /objetos/1.json
  def update
    respond_to do |format|
      if @objeto.update(objeto_params)
        format.html { redirect_to @objeto, notice: 'Objeto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objetos/1
  # DELETE /objetos/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to objetos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objeto
      @objeto = Objeto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objeto_params
      params.require(:objeto).permit(:nombre, :tipo, :descripcion)
    end
end
