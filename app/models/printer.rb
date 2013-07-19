class Printer < ActiveRecord::Base

  attr_accessible :email, :contact_name, :address, :zipcode,
                  :phone, :pending, :shop_name, :city_id, :slug

  validates :email, :contact_name, :shop_name, :city_id,
            :zipcode, :address, :phone, presence: true

   before_save :generate_slug

  belongs_to :city
  has_many :print_prices
  has_many :garment_prices
  has_one  :printer_feature

  def pending?
    true
  end

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= shop_name.parameterize
  end
end
