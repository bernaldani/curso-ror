class CapacidadesController < ApplicationController
  # GET /capacidades
  # GET /capacidades.json
  def index
    @capacidades = Capacidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @capacidades }
    end
  end

  # GET /capacidades/1
  # GET /capacidades/1.json
  def show
    @capacidad = Capacidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @capacidad }
    end
  end

  # GET /capacidades/new
  # GET /capacidades/new.json
  def new
    @capacidad = Capacidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @capacidad }
    end
  end

  # GET /capacidades/1/edit
  def edit
    @capacidad = Capacidad.find(params[:id])
  end

  # POST /capacidades
  # POST /capacidades.json
  def create
    @capacidad = Capacidad.new(params[:capacidad])

    respond_to do |format|
      if @capacidad.save
        format.html { redirect_to @capacidad, notice: 'Capacidad was successfully created.' }
        format.json { render json: @capacidad, status: :created, location: @capacidad }
      else
        format.html { render "new" }
        format.json { render json: @capacidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /capacidades/1
  # PUT /capacidades/1.json
  def update
    @capacidad = Capacidad.find(params[:id])

    respond_to do |format|
      if @capacidad.update_attributes(params[:capacidad])
        format.html { redirect_to @capacidad, notice: 'Capacidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render "edit" }
        format.json { render json: @capacidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capacidades/1
  # DELETE /capacidades/1.json
  def destroy
    @capacidad = Capacidad.find(params[:id])
    @capacidad.destroy

    respond_to do |format|
      format.html { redirect_to capacidades_url }
      format.json { head :no_content }
    end
  end
end
