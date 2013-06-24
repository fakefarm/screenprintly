# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :printer do
    email "dave@futura.com"
    contact_name "Dave"
    phone "(123)456-7890"
    address "123 main st., Boulder CO 80305"
    website "www.futura.com"
    zipcode "12345"
  end
end
