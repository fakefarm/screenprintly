class GarmentPricesController < ApplicationController

  def index
    @garment_prices = GarmentPrice.all
  end

  def new
    @garment = GarmentPrice.new
    @printer = Printer.find_by_slug(params[:printer_id])
  end

  def create
    @printer = Printer.find_by_slug(params[:printer_id])
    @garment = GarmentPrice.create(params[:garment_price])

    if @garment.save
      redirect_to  printer_path(@printer)
    else
      render 'new'
    end

  end

  def show; end
  def edit; end

end
