class ComponentesModelosController < ApplicationController
  # GET /componentes_modelos
  # GET /componentes_modelos.json
  def index
    @componentes_modelos = ComponenteModelo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @componentes_modelos }
    end
  end

  # GET /componentes_modelos/1
  # GET /componentes_modelos/1.json
  def show
    @componente_modelo = ComponenteModelo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @componente_modelo }
    end
  end

  # GET /componentes_modelos/new
  # GET /componentes_modelos/new.json
  def new
    @componente_modelo = ComponenteModelo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @componente_modelo }
    end
  end

  # GET /componentes_modelos/1/edit
  def edit
    @componente_modelo = ComponenteModelo.find(params[:id])
  end

  # POST /componentes_modelos
  # POST /componentes_modelos.json
  def create
    @componente_modelo = ComponenteModelo.new(params[:componente_modelo])

    respond_to do |format|
      if @componente_modelo.save
        format.html { redirect_to @componente_modelo, notice: 'Componente modelo was successfully created.' }
        format.json { render json: @componente_modelo, status: :created, location: @componente_modelo }
      else
        format.html { render "new" }
        format.json { render json: @componente_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /componentes_modelos/1
  # PUT /componentes_modelos/1.json
  def update
    @componente_modelo = ComponenteModelo.find(params[:id])

    respond_to do |format|
      if @componente_modelo.update_attributes(params[:componente_modelo])
        format.html { redirect_to @componente_modelo, notice: 'Componente modelo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render "edit" }
        format.json { render json: @componente_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /componentes_modelos/1
  # DELETE /componentes_modelos/1.json
  def destroy
    @componente_modelo = ComponenteModelo.find(params[:id])
    @componente_modelo.destroy

    respond_to do |format|
      format.html { redirect_to componentes_modelos_url }
      format.json { head :no_content }
    end
  end
end
