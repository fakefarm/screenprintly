class PrintersController < ApplicationController
  def index
    @printers = Printer.all
  end

  def new
    @printer = Printer.new
  end

  def create
    @printer = Printer.new(params[:printer])
    if @printer.save
      redirect_to printers_path
    else
      render new_printer_path
    end
  end

  def show
    @printer = Printer.find(params[:id])
    @print_prices = PrintPrice.where(printer_id: @printer)
    @garment_prices = GarmentPrice.where(printer_id: @printer)
  end

  def edit
  end

  def printing_prices
    @params = params
  end
end
