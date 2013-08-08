require 'spec_helper'

feature Quote do
  it 'is performed with a quantity and number of colors' do
    jak_prints = create(:printer, shop_name: "jak prints" )
    garment_gear = create(:printer, shop_name: "garment gear")
    future_shirts = create(:printer, shop_name: "future shirts" )
    jaks_prices = create(:print_price, printer_id: jak_prints.id)
    garment_prices = create(:print_price, printer_id: garment_gear.id)
    future_prices = create(:print_price, one_color: 33, printer_id: future_shirts.id)

    visit new_quote_path
    fill_in 'Quantity', with: 15
    select '1 color', from: 'quote_number_of_colors'

    click_button 'Create Quote'
    page.should have_text("Listing printers")
    page.should have_text('garment gear')
    page.should have_text('23')
  end

  describe 'placing an order' do
     # _refactor - create a before each and move this test into confirmations!

    scenario 'from ink to completion' do
      future_shirts = create(:printer, shop_name: "future shirts" )
      future_prices = create(:print_price, one_color: 33, printer_id: future_shirts.id)
      future_garment  = create(:garment_price, price: '350', printer_id: future_shirts.id )
      future_garment2 = create(:garment_price, quality: 'Standard', printer_id: future_shirts.id )
      future_garment3 = create(:garment_price, quality: 'Closeout', printer_id: future_shirts.id )

      visit new_quote_path

      fill_in 'Quantity', with: 15
      select '1 color', from: 'quote_number_of_colors'

      click_button 'Create Quote'
      click_link 'Select printer'
      page.should have_text('Pick your t-shirt')
      choose('garment_selector_short_sleeve_tshirt_budget')
      page.should have_text('350')
      fill_in 'garment_selector_comment', with: "I want american apparel"
      click_button('Proceed to Printer Page')
      page.should have_text('budget')
      page.should have_text('7245')
      click_button('Submit order')
      page.should have_text ("You're all set!")
    end
  end
end