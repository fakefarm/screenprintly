class ConfirmationsController < ApplicationController
  def index
  end

  def new
    @printer = Printer.find_by_slug!(params[:printer_id])
    @garment = GarmentSelector.last # _refactor How do I use current session without requiring signin?
    @quote = Quote.last # # _refactor How do I use current session without requiring signin?
    @print_price_all = PrintPrice.where(printer_id: @printer, price_tier: @quote.quantity)
    # @print_price = @print_price_all.number_of_colors
  end
end
