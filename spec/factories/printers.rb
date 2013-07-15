# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :name do |n|
    "name#{n}"
  end
  factory :printer do
    shop_name 'screenprintly'
    email "dave@futura.com"
    contact_name "Dave"
    phone "(123)456-7890"
    address "123 main st., Boulder"
    zipcode "12345"
    association :city, :factory => :city
  end
end
