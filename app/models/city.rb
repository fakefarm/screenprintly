class City < ActiveRecord::Base
  attr_accessible :name, :slug

  has_many :printers, order: 'shop_name'

  validates :name, uniqueness: true

  before_save :generate_slug

  def to_param
    slug
  end

private

  def generate_slug
    self.slug ||= name.parameterize
  end
end
