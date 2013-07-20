class City < ActiveRecord::Base
  attr_accessible :name

  has_many :printers, order: 'shop_name'

  validates :name, uniqueness: true
end
