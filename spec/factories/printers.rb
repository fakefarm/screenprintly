# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :printer do
    shop_name 'screenprintly'
    city_id '1'
    email "dave@futura.com"
    contact_name "Dave"
    phone "(123)456-7890"
    address "123 main st., Boulder"
    zipcode "12345"
  end
end
