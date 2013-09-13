class CelulasController < ApplicationController
  # GET /celulas
  # GET /celulas.json
  load_and_authorize_resource
  
  before_filter :definir_igreja

  def index
    @celulas = @igreja.celulas.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @celulas }
    end
  end

  # GET /celulas/1
  # GET /celulas/1.json
  def show
    @celula = @igreja.celulas.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @celula }
    end
  end

  # GET /celulas/new
  # GET /celulas/new.json
  def new
    @celula = @igreja.celulas.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @celula }
    end
  end

  # GET /celulas/1/edit
  def edit
    @celula = @igreja.celulas.find(params[:id])
  end

  # POST /celulas
  # POST /celulas.json
  def create
    @celula = @igreja.celulas.new(params[:celula])

    respond_to do |format|
      if @celula.save
        format.html { redirect_to igreja_celula_path(@igreja, @celula), notice: 'Celula was successfully created.' }
        format.json { render json: @celula, status: :created, location: @celula }
      else
        format.html { render action: "new" }
        format.json { render json: @celula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /celulas/1
  # PUT /celulas/1.json
  def update
    @celula = @igreja.celulas.find(params[:id])

    respond_to do |format|
      if @celula.update_attributes(params[:celula])
        format.html { redirect_to igreja_celula_path(@igreja, @celula), notice: 'Celula was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @celula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celulas/1
  # DELETE /celulas/1.json
  def destroy
    @celula = @igreja.celulas.find(params[:id])
    @celula.destroy

    respond_to do |format|
      format.html { redirect_to igreja_celulas_url(@igreja) }
      format.json { head :no_content }
    end
  end

  private
  def definir_igreja
    @igreja = Igreja.find(params[:igreja_id]) 
  end

end
