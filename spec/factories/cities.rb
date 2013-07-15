FactoryGirl.define do

  factory :city do
    sequence(:name) { |name| "#{name}"}
  end
end
