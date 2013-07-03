require 'spec_helper'

describe City do
  it 'has a valid name' do
    expect(create(:city)).to be_valid
  end

  it 'is unique' do
    create(:city)
    expect(build(:city)).to have(1).errors_on(:name)
  end
end
