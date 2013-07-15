# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :garment_price do
    fabric '100% cotton'
    cut 'slim fit'
    quality 'AAA'
    colors 'red, blue, brown'
    inventory 'un-stable'
    brand 'Alternative Apparel'
    style_number '2001'
    price 450
  end
end
