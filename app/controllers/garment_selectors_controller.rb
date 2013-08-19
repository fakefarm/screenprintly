class GarmentSelectorsController < ApplicationController

  def index; end

  def new
    @printer = Printer.find_by_slug(params[:printer_id])
    @garment_selector = GarmentSelector.new

    @garment_prices = GarmentPrice.where(printer_id: @printer.id)

    @budget = @garment_prices.where(quality: 'Closeout')
    @budget_max = @budget.max_by { |g| g.price }

    @brand = @garment_prices.where(quality: 'Standard')
    @brand_max = @brand.max_by { |g| g.price }

    @boutique = @garment_prices.where(quality: 'Premium')
    @boutique_max = @boutique.max_by { |g| g.price }
  end

  def create
    @printer = Printer.find_by_slug(params[:printer_id])

    @garment_selector = GarmentSelector.create(params[:garment_selector])

    if @garment_selector.save
      @session = Session.find_by_session_id(session['session_id'])
      @session.update_attributes(printer_id: @printer.id, garment_id: @garment_selector.id)
      redirect_to new_printer_garment_selector_confirmation_path(@printer, @garment_selector)
    else
      redirect_to 'new'
    end
  end
end

