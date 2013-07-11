class PrintPricesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @print_price = PrintPrice.new
    @printer = Printer.find(params[:printer_id])
  end

  def create
    @print_price = PrintPrice.create(params[:print_price])
    @printer = Printer.find(params[:printer_id])

    if @print_price.save
      redirect_to printer_path(@printer)
    else
      render 'new'
    end
  end

  def edit
  end
end
