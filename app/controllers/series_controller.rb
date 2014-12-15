class SeriesController < ApplicationController
  # GET /series
  # GET /series.json
  def index
    @series = Serie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @series }
    end
  end

  # GET /series/1
  # GET /series/1.json
  def show
    @serie = Serie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @serie }
    end
  end

  # GET /series/new
  # GET /series/new.json
  def new
    @serie = Serie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @serie }
    end
  end

  # GET /series/1/edit
  def edit
    @serie = Serie.find(params[:id])
  end

  # POST /series
  # POST /series.json
  def create
    @serie = Serie.new(params[:serie])

    respond_to do |format|
      if @serie.save
        format.html { redirect_to @serie, notice: 'Serie was successfully created.' }
        format.json { render json: @serie, status: :created, location: @serie }
      else
        format.html { render "new" }
        format.json { render json: @serie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /series/1
  # PUT /series/1.json
  def update
    @serie = Serie.find(params[:id])

    respond_to do |format|
      if @serie.update_attributes(params[:serie])
        format.html { redirect_to @serie, notice: 'Serie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render "edit" }
        format.json { render json: @serie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /series/1
  # DELETE /series/1.json
  def destroy
    @serie = Serie.find(params[:id])
    @serie.destroy

    respond_to do |format|
      format.html { redirect_to series_url }
      format.json { head :no_content }
    end
  end
end
