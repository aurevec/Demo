class FactureItemsController < ApplicationController
  # GET /facture_items
  # GET /facture_items.json
  def index
    @facture_items = FactureItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facture_items }
    end
  end

  # GET /facture_items/1
  # GET /facture_items/1.json
  def show
    @facture_item = FactureItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facture_item }
    end
  end

  # GET /facture_items/new
  # GET /facture_items/new.json
  def new
    @facture_item = FactureItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facture_item }
    end
  end

  # GET /facture_items/1/edit
  def edit
    @facture_item = FactureItem.find(params[:id])
  end

  # POST /facture_items
  # POST /facture_items.json
  def create
    @facture = Facture.find(params[:facture_id])
    @produit = Produit.find(params[:facture_item][:produit_id])
    
    if params[:facture_item][:quantite].to_i <= @produit.quantite
      params[:facture_item][:prix] = @produit.prix
      @facture_item = @facture.facture_items.create(params[:facture_item])
      @produit.quantite -= params[:facture_item][:quantite].to_i
      @produit.save
    else
      @notice = "Not enough #{@produit.nom} (quantity: #{@produit.quantite})."
    end
    redirect_to facture_path(@facture), notice: @notice
  end

  # PUT /facture_items/1
  # PUT /facture_items/1.json
  def update
    @facture_item = FactureItem.find(params[:id])
    @facture = Facture.find(@facture_item.facture)
    @produit = Produit.find(@facture_item.produit)
    @produit.quantite += @facture_item.quantite
    respond_to do |format|
      if @facture_item.update_attributes(params[:facture_item])
        @produit.quantite -= @facture_item.quantite
        @produit.save
        format.html { redirect_to facture_url(@facture), notice: 'Facture item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @facture_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facture_items/1
  # DELETE /facture_items/1.json
  def destroy
    @facture_item = FactureItem.find(params[:id])
    @facture = Facture.find(@facture_item.facture)
    @produit = Produit.find(@facture_item.produit)
    @produit.quantite += @facture_item.quantite
    @produit.save
    @facture_item.destroy

    respond_to do |format|
      format.html { redirect_to facture_url(@facture) }
      format.json { head :no_content }
    end
  end
end
