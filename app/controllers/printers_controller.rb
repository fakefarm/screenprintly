class PrintersController < ApplicationController

  before_filter :find_printer, only: [:show, :edit, :update, :destroy]

  def index
    @printers = Printer.all
  end

  def new
    @printer = Printer.new
  end

  def create
    @printer = Printer.new(params[:printer])
    if @printer.save
      redirect_to printer_path(@printer)
    else
      render new_printer_path
    end
  end

  def show
    @print_prices = PrintPrice.where(printer_id: @printer)
    @garment_prices = GarmentPrice.where(printer_id: @printer)
    @features = PrinterFeature.where(printer_id: @printer)
    @finishing = FinishingService.where(printer_id: @printer)
    @page_title = @printer.shop_name
    @page_description = "#{@printer.city.name} | #{@printer.shop_name}"
  end

  def edit
  end

  def update
    if @printer.update_attributes(params[:printer])
      redirect_to printer_path(@printer)
    else
      'edit'
    end
  end

  def printing_prices
    @params = params
  end

private
  def find_printer
    @printer = Printer.find_by_slug!(params[:id])
  end
end
