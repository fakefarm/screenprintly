require 'spec_helper'

feature 'GarmentPrice' do
  scenario "Click add garment price" do
    city = create(:city)
    printer = create(:printer, city_id: city.id)
    visit printer_path(printer)
    click_link("Add a garment")
    page.should have_text("Add a new garment")
  end
end