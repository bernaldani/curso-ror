class AccesoriosController < ApplicationController
  # GET /accesorios
  # GET /accesorios.json
  def index
    @accesorios = Accesorio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accesorios }
    end
  end

  # GET /accesorios/1
  # GET /accesorios/1.json
  def show
    @accesorio = Accesorio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accesorio }
    end
  end

  # GET /accesorios/new
  # GET /accesorios/new.json
  def new
    @accesorio = Accesorio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accesorio }
    end
  end

  # GET /accesorios/1/edit
  def edit
    @accesorio = Accesorio.find(params[:id])
  end

  # POST /accesorios
  # POST /accesorios.json
  def create
    @accesorio = Accesorio.new(params[:accesorio])

    respond_to do |format|
      if @accesorio.save
        format.html { redirect_to @accesorio, notice: 'Accesorio was successfully created.' }
        format.json { render json: @accesorio, status: :created, location: @accesorio }
      else
        format.html { render "new" }
        format.json { render json: @accesorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accesorios/1
  # PUT /accesorios/1.json
  def update
    @accesorio = Accesorio.find(params[:id])

    respond_to do |format|
      if @accesorio.update_attributes(params[:accesorio])
        format.html { redirect_to @accesorio, notice: 'Accesorio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render "edit" }
        format.json { render json: @accesorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accesorios/1
  # DELETE /accesorios/1.json
  def destroy
    @accesorio = Accesorio.find(params[:id])
    @accesorio.destroy

    respond_to do |format|
      format.html { redirect_to accesorios_url }
      format.json { head :no_content }
    end
  end
end
