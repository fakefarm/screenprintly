require 'spec_helper'

describe Printer do
  context 'is invalid' do
    it 'without an email' do
      expect(build(:printer, email: nil)).to have(1).errors_on(:email)
    end
    it 'without a contact name' do
      expect(build(:printer, contact_name: nil)).to have(1).errors_on(:contact_name)
    end
    it 'without a phone number' do
      expect(build(:printer, phone: nil)).to have(1).errors_on(:phone)
    end
    it 'without an work address' do
      expect(build(:printer, address: nil)).to have(1).errors_on(:address)
    end
    it 'without a zipcode' do
      expect(build(:printer, zipcode: nil)).to have(1).errors_on(:zipcode)
    end
  end

  context 'is valid' do
    it 'with all content filled out' do
      expect(create(:printer)).to be_valid
    end
  end

  context 'status' do
    it 'is pending until activated' do
      expect(create(:printer)).to be_pending
    end
  end
end