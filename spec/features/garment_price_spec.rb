require 'spec_helper'

feature 'GarmentPrice' do
  scenario "Click add garment price" do
    city = create(:city)
    printer = create(:printer, city_id: city.id)
    visit printer_path(printer)
    click_link("Add a garment")
    page.should have_text("Add a new garment")
  end

  scenario 'fill out form for a new garment price' do
    city = create(:city)
    printer = create(:printer, city_id: city.id)
    visit "/printers/#{printer.id}/" # named routes are not working...
    click_link 'Add a garment'
    fill_in "Brand", with: "Hanes"
    fill_in "Style number", with: "3002"
    select('100% cotton', from: 'Fabric')
    select('slim fit', from: 'Cut')
    select('Premium', from: 'Quality')
    fill_in 'Colors', with: 'blue, green, red'
    select('Stable', from: 'garment_price_inventory')
    fill_in 'Price', with: 340
    click_button "Create Garment price"
    page.should have_text(printer.shop_name)
  end
end