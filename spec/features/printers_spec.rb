require 'spec_helper'

feature 'Printer' do
  scenario 'page exists' do
    visit new_printer_path
    page.should have_text("List your shop!")
  end

  scenario 'creates an account' do
    create(:city)
    visit new_printer_path
    fill_in 'Shop name', with: 'Screenprintly'
    select 'Boulder', from: 'City'
    fill_in 'Contact name', with: 'dave woodall'
    fill_in 'Email', with: 'dave@screenprintly.com'
    fill_in 'Address', with: '123 main st.'
    fill_in 'Zipcode', with: '12345'
    click_button 'Create Printer'
    # page should redirect to printer show, with a flash that says 'success, you are now logged in!'
  end

  scenario 'errors are displayed when content is invalid' do
    visit new_printer_path
    build(:printer, email: nil, contact_name: nil, shop_name: nil, zipcode: nil, address: nil, phone: nil)
    click_button 'Create Printer'

    page.should have_text("Email can't be blank")
    page.should have_text("Contact name can't be blank")
    page.should have_text("Shop name can't be blank")
    page.should have_text("Zipcode can't be blank")
    page.should have_text("Address can't be blank")
    page.should have_text("Phone can't be blank")
  end

  scenario 'has a show page which display specific contact information' do
    create(:city)
    printer = create(:printer)
    visit printers_path
    visit printer_path(printer)
    page.should have_text("screenprintly")
  end

  scenario 'shows prices' do
    create(:city)
    printer = create(:printer)
    print_price = create(:print_price, printer_id: printer.id)
    visit printer_path(printer)
    visit printer_path(printer)
    page.should have_text("plastisol")
  end
end


