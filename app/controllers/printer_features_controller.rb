class PrinterFeaturesController < ApplicationController
  def new
    @feature = PrinterFeature.new
    @printer = Printer.find_by_slug(params[:printer_id])
  end

  def create
    @feature = PrinterFeature.new(params[:printer_feature])
    @printer = Printer.find_by_slug(params[:printer_id])
    if @feature.save
      redirect_to printer_path(@printer)
    else
      render 'new'
    end
  end

  def indes
  end

  def show
  end

  def edit
  end
end
