class PriceReceiptUnitsController < ApplicationController
  # GET /price_receipt_units
  # GET /price_receipt_units.json
  def index
    @price_receipt_units = PriceReceiptUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @price_receipt_units }
    end
  end

  # GET /price_receipt_units/1
  # GET /price_receipt_units/1.json
  def show
    @price_receipt_unit = PriceReceiptUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @price_receipt_unit }
    end
  end

  # GET /price_receipt_units/new
  # GET /price_receipt_units/new.json
  def new
    @price_receipt_unit = PriceReceiptUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @price_receipt_unit }
    end
  end

  # GET /price_receipt_units/1/edit
  def edit
    @price_receipt_unit = PriceReceiptUnit.find(params[:id])
  end

  # POST /price_receipt_units
  # POST /price_receipt_units.json
  def create
    @price_receipt_unit = PriceReceiptUnit.new(params[:price_receipt_unit])

    respond_to do |format|
      if @price_receipt_unit.save
        format.html { redirect_to @price_receipt_unit, notice: 'Price receipt unit was successfully created.' }
        format.json { render json: @price_receipt_unit, status: :created, location: @price_receipt_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @price_receipt_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /price_receipt_units/1
  # PUT /price_receipt_units/1.json
  def update
    @price_receipt_unit = PriceReceiptUnit.find(params[:id])

    respond_to do |format|
      if @price_receipt_unit.update_attributes(params[:price_receipt_unit])
        format.html { redirect_to @price_receipt_unit, notice: 'Price receipt unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @price_receipt_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_receipt_units/1
  # DELETE /price_receipt_units/1.json
  def destroy
    @price_receipt_unit = PriceReceiptUnit.find(params[:id])
    @price_receipt_unit.destroy

    respond_to do |format|
      format.html { redirect_to price_receipt_units_url }
      format.json { head :no_content }
    end
  end
end
