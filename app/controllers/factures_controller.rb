class FacturesController < ApplicationController
  # GET /factures
  # GET /factures.json
  def index
    @factures = Facture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @factures }
    end
  end

  # GET /factures/1
  # GET /factures/1.json
  def show
    @facture = Facture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facture }
    end
  end

  # GET /factures/new
  # GET /factures/new.json
  def new
    @facture = Facture.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facture }
    end
  end

  # GET /factures/1/edit
  def edit
    @facture = Facture.find(params[:id])
  end

  # POST /factures
  # POST /factures.json
  def create
    params[:facture][:user_id] = session[:user_id]
    @facture = Facture.new(params[:facture])

    respond_to do |format|
      if @facture.save
        format.html { redirect_to @facture, notice: 'Facture was successfully created.' }
        format.json { render json: @facture, status: :created, location: @facture }
      else
        format.html { render action: "new" }
        format.json { render json: @facture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /factures/1
  # PUT /factures/1.json
  def update
    @facture = Facture.find(params[:id])

    respond_to do |format|
      if @facture.update_attributes(params[:facture])
        format.html { redirect_to @facture, notice: 'Facture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @facture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factures/1
  # DELETE /factures/1.json
  def destroy
    @facture = Facture.find(params[:id])
    @facture.destroy

    respond_to do |format|
      format.html { redirect_to factures_url }
      format.json { head :no_content }
    end
  end
end
