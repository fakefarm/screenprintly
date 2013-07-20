require 'spec_helper'

feature 'Finishing Service' do
  scenario 'that the printer offers' do

    create(:city)
    printer = create(:printer)
    visit printer_path(printer)
    click_link 'Add a finishing service'
    check('Printed labels')
    check('Woven labels')
    check('Folding bagging')
    check('Hang tags')
    check('Fulfillment')
    click_button "Create Finishing service"
    page.should have_text(printer.shop_name)
  end

  scenario 'shows on printer page' do
    create(:city)
    printer = create(:printer)
    visit printer_path(printer)
    click_link 'Add a finishing service'
    check('Printed labels')
    click_button "Create Finishing service"
    page.should have_text("Finishing services")
    page.should have_text("true")
  end
end