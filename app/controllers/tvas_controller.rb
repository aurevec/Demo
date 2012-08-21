class TvasController < ApplicationController
  # GET /tvas
  # GET /tvas.json
  def index
    @tvas = Tva.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tvas }
    end
  end

  # GET /tvas/1
  # GET /tvas/1.json
  def show
    @tva = Tva.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tva }
    end
  end

  # GET /tvas/new
  # GET /tvas/new.json
  def new
    @tva = Tva.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tva }
    end
  end

  # GET /tvas/1/edit
  def edit
    @tva = Tva.find(params[:id])
  end

  # POST /tvas
  # POST /tvas.json
  def create
    @tva = Tva.new(params[:tva])

    respond_to do |format|
      if @tva.save
        format.html { redirect_to @tva, notice: 'Tva was successfully created.' }
        format.json { render json: @tva, status: :created, location: @tva }
      else
        format.html { render action: "new" }
        format.json { render json: @tva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tvas/1
  # PUT /tvas/1.json
  def update
    @tva = Tva.find(params[:id])

    respond_to do |format|
      if @tva.update_attributes(params[:tva])
        format.html { redirect_to @tva, notice: 'Tva was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tvas/1
  # DELETE /tvas/1.json
  def destroy
    @tva = Tva.find(params[:id])
    @tva.destroy

    respond_to do |format|
      format.html { redirect_to tvas_url }
      format.json { head :no_content }
    end
  end
end
