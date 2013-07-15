require 'spec_helper'

describe City do
  it 'has a valid name' do
    expect(create(:city)).to be_valid
  end

  it 'is unique' do
    create(:city, name: 'Boulder')
    expect(build(:city, name: 'Boulder')).to have(1).errors_on(:name)
  end
end
