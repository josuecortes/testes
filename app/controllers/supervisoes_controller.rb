class SupervisoesController < ApplicationController
  # GET /supervisoes
  # GET /supervisoes.json
  def index
    @supervisoes = Supervisao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supervisoes }
    end
  end

  # GET /supervisoes/1
  # GET /supervisoes/1.json
  def show
    @supervisao = Supervisao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supervisao }
    end
  end

  # GET /supervisoes/new
  # GET /supervisoes/new.json
  def new
    @supervisao = Supervisao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supervisao }
    end
  end

  # GET /supervisoes/1/edit
  def edit
    @supervisao = Supervisao.find(params[:id])
  end

  # POST /supervisoes
  # POST /supervisoes.json
  def create
    @supervisao = Supervisao.new(params[:supervisao])

    respond_to do |format|
      if @supervisao.save
        format.html { redirect_to @supervisao, notice: 'Supervisao was successfully created.' }
        format.json { render json: @supervisao, status: :created, location: @supervisao }
      else
        format.html { render action: "new" }
        format.json { render json: @supervisao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supervisoes/1
  # PUT /supervisoes/1.json
  def update
    @supervisao = Supervisao.find(params[:id])

    respond_to do |format|
      if @supervisao.update_attributes(params[:supervisao])
        format.html { redirect_to @supervisao, notice: 'Supervisao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supervisao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supervisoes/1
  # DELETE /supervisoes/1.json
  def destroy
    @supervisao = Supervisao.find(params[:id])
    @supervisao.destroy

    respond_to do |format|
      format.html { redirect_to supervisoes_url }
      format.json { head :no_content }
    end
  end
end
