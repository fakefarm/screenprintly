require 'spec_helper'

feature 'Printer feature' do
  scenario 'add your printer features' do

    create(:city)
    printer = create(:printer)
    visit printer_path(printer)
    click_link 'Add a feature'
    check('Free shipping')
    check('Digital proof')
    check('Hotline')
    check('Art team')
    check('Sample')
    check('Drop ship')
    click_button "Create Printer feature"
    page.should have_text(printer.shop_name)
  end

  scenario 'shows on printer page' do
    create(:city)
    printer = create(:printer)
    visit printer_path(printer)
    click_link 'Add a feature'
    check('Free shipping')
    click_button "Create Printer feature"
    page.should have_text("Printer features")
    page.should have_text("Free Shipping")
  end
end