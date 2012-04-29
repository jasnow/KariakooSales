class MarketTypesController < ApplicationController
  # GET /market_types
  # GET /market_types.json
  def index
    @market_types = MarketType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @market_types }
    end
  end

  # GET /market_types/1
  # GET /market_types/1.json
  def show
    @market_type = MarketType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @market_type }
    end
  end

  # GET /market_types/new
  # GET /market_types/new.json
  def new
    @market_type = MarketType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @market_type }
    end
  end

  # GET /market_types/1/edit
  def edit
    @market_type = MarketType.find(params[:id])
  end

  # POST /market_types
  # POST /market_types.json
  def create
    @market_type = MarketType.new(params[:market_type])

    respond_to do |format|
      if @market_type.save
        format.html { redirect_to @market_type, notice: 'Market type was successfully created.' }
        format.json { render json: @market_type, status: :created, location: @market_type }
      else
        format.html { render action: "new" }
        format.json { render json: @market_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /market_types/1
  # PUT /market_types/1.json
  def update
    @market_type = MarketType.find(params[:id])

    respond_to do |format|
      if @market_type.update_attributes(params[:market_type])
        format.html { redirect_to @market_type, notice: 'Market type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @market_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_types/1
  # DELETE /market_types/1.json
  def destroy
    @market_type = MarketType.find(params[:id])
    @market_type.destroy

    respond_to do |format|
      format.html { redirect_to market_types_url }
      format.json { head :no_content }
    end
  end
end
