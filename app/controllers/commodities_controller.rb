class CommoditiesController < ApplicationController
  # GET /commodities
  # GET /commodities.json
  def index
    @commodities = Commodity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commodities }
    end
  end

  # GET /commodities/1
  # GET /commodities/1.json
  def show
    @commodity = Commodity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commodity }
    end
  end

  # GET /commodities/new
  # GET /commodities/new.json
  def new
    @commodity = Commodity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commodity }
    end
  end

  # GET /commodities/1/edit
  def edit
    @commodity = Commodity.find(params[:id])
  end

  # POST /commodities
  # POST /commodities.json
  def create
    @commodity = Commodity.new(params[:commodity])

    respond_to do |format|
      if @commodity.save
        format.html { redirect_to @commodity, notice: 'Commodity was successfully created.' }
        format.json { render json: @commodity, status: :created, location: @commodity }
      else
        format.html { render action: "new" }
        format.json { render json: @commodity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commodities/1
  # PUT /commodities/1.json
  def update
    @commodity = Commodity.find(params[:id])

    respond_to do |format|
      if @commodity.update_attributes(params[:commodity])
        format.html { redirect_to @commodity, notice: 'Commodity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commodity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commodities/1
  # DELETE /commodities/1.json
  def destroy
    @commodity = Commodity.find(params[:id])
    @commodity.destroy

    respond_to do |format|
      format.html { redirect_to commodities_url }
      format.json { head :no_content }
    end
  end
end
