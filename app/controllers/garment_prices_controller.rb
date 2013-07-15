class GarmentPricesController < ApplicationController

  def index; end
  def new;
    @garment = GarmentPrice.new
  end

  def create
    @printer = Printer.find(params[:printer_id])
  end

  def show; end
  def edit; end

end
