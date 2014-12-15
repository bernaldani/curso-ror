class SistemasOperativosController < ApplicationController
  # GET /sistemas_operativos
  # GET /sistemas_operativos.json
  def index
    @sistemas_operativos = SistemaOperativo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sistemas_operativos }
    end
  end

  # GET /sistemas_operativos/1
  # GET /sistemas_operativos/1.json
  def show
    @sistema_operativo = SistemaOperativo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sistema_operativo }
    end
  end

  # GET /sistemas_operativos/new
  # GET /sistemas_operativos/new.json
  def new
    @sistema_operativo = SistemaOperativo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sistema_operativo }
    end
  end

  # GET /sistemas_operativos/1/edit
  def edit
    @sistema_operativo = SistemaOperativo.find(params[:id])
  end

  # POST /sistemas_operativos
  # POST /sistemas_operativos.json
  def create
    @sistema_operativo = SistemaOperativo.new(params[:sistema_operativo])

    respond_to do |format|
      if @sistema_operativo.save
        format.html { redirect_to @sistema_operativo, notice: 'Sistema operativo was successfully created.' }
        format.json { render json: @sistema_operativo, status: :created, location: @sistema_operativo }
      else
        format.html { render "new" }
        format.json { render json: @sistema_operativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sistemas_operativos/1
  # PUT /sistemas_operativos/1.json
  def update
    @sistema_operativo = SistemaOperativo.find(params[:id])

    respond_to do |format|
      if @sistema_operativo.update_attributes(params[:sistema_operativo])
        format.html { redirect_to @sistema_operativo, notice: 'Sistema operativo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render "edit" }
        format.json { render json: @sistema_operativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sistemas_operativos/1
  # DELETE /sistemas_operativos/1.json
  def destroy
    @sistema_operativo = SistemaOperativo.find(params[:id])
    @sistema_operativo.destroy

    respond_to do |format|
      format.html { redirect_to sistemas_operativos_url }
      format.json { head :no_content }
    end
  end
end
