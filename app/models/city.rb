class City < ActiveRecord::Base
  attr_accessible :name

  has_many :printers

  validates :name, uniqueness: true
end
