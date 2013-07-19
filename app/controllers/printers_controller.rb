class PrintersController < ApplicationController

  before_filter :find_page, only: [:show, :edit, :update, :destroy]

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
    @print_prices = PrintPrice.where(printer_id: @printer)
    @garment_prices = GarmentPrice.where(printer_id: @printer)
    @features = PrinterFeature.where(printer_id: @printer)
  end

  def edit
  end

  def printing_prices
    @params = params
  end

private
  def find_page
    @printer = Printer.find_by_slug!(params[:id])
  end
end
