class ProveedoresController < ApplicationController
  # GET /proveedores
  # GET /proveedores.json
  def index
    @proveedores = Proveedor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proveedores }
    end
  end

  # GET /proveedores/1
  # GET /proveedores/1.json
  def show
    @proveedor = Proveedor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proveedor }
    end
  end

  # GET /proveedores/new
  # GET /proveedores/new.json
  def new
    @proveedor = Proveedor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proveedor }
    end
  end

  # GET /proveedores/1/edit
  def edit
    @proveedor = Proveedor.find(params[:id])
  end

  # POST /proveedores
  # POST /proveedores.json
  def create
    @proveedor = Proveedor.new(params[:proveedor])

    respond_to do |format|
      if @proveedor.save
        format.html { redirect_to @proveedor, notice: 'Proveedor was successfully created.' }
        format.json { render json: @proveedor, status: :created, location: @proveedor }
      else
        format.html { render "new" }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proveedores/1
  # PUT /proveedores/1.json
  def update
    @proveedor = Proveedor.find(params[:id])

    respond_to do |format|
      if @proveedor.update_attributes(params[:proveedor])
        format.html { redirect_to @proveedor, notice: 'Proveedor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render "edit" }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedores/1
  # DELETE /proveedores/1.json
  def destroy
    @proveedor = Proveedor.find(params[:id])
    @proveedor.destroy

    respond_to do |format|
      format.html { redirect_to proveedores_url }
      format.json { head :no_content }
    end
  end
end
