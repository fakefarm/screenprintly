require 'spec_helper'

feature 'Print pricing' do
  scenario 'has new price tier page' do
    create(:city)
    printer = create(:printer)
    visit printer_path(printer)
    click_link 'Add a price tier'
    page.should have_text("Add a new price tier")
  end
end