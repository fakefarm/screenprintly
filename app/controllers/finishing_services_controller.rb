class FinishingServicesController < ApplicationController
  def new
    @printer = Printer.find_by_slug(params[:printer_id])
    @finishing = FinishingService.new
  end

  def create
    @printer = Printer.find_by_slug(params[:printer_id])
    @finishing = FinishingService.new(params[:finishing_service])
    if @finishing.save
      redirect_to printer_path(@printer)
    else
      render 'new'
    end
  end
end
