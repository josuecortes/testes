class IgrejasController < ApplicationController
  # GET /igrejas
  # GET /igrejas.json
  load_and_authorize_resource :class => "Igreja"

  def criar_celula
    
  end

  def index
    @igrejas = Igreja.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @igrejas }
    end
  end

  # GET /igrejas/1
  # GET /igrejas/1.json
  def show
    @igreja = Igreja.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @igreja }
    end
  end

  # GET /igrejas/new
  # GET /igrejas/new.json
  def new
    @igreja = Igreja.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @igreja }
    end
  end

  # GET /igrejas/1/edit
  def edit
    @igreja = Igreja.find(params[:id])
  end

  # POST /igrejas
  # POST /igrejas.json
  def create
    @igreja = Igreja.new(params[:igreja])

    respond_to do |format|
      if @igreja.save
        format.html { redirect_to @igreja, notice: 'Igreja was successfully created.' }
        format.json { render json: @igreja, status: :created, location: @igreja }
      else
        format.html { render action: "new" }
        format.json { render json: @igreja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /igrejas/1
  # PUT /igrejas/1.json
  def update
    @igreja = Igreja.find(params[:id])

    respond_to do |format|
      if @igreja.update_attributes(params[:igreja])
        format.html { redirect_to @igreja, notice: 'Igreja was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @igreja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /igrejas/1
  # DELETE /igrejas/1.json
  def destroy
    @igreja = Igreja.find(params[:id])
    @igreja.destroy

    respond_to do |format|
      format.html { redirect_to igrejas_url }
      format.json { head :no_content }
    end
  end
end
