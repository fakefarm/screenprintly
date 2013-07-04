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
  end

  def edit
  end
end
