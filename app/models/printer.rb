class Printer < ActiveRecord::Base

  attr_accessible :email, :contact_name, :address, :zipcode,
                  :phone, :pending, :shop_name, :city_id

  validates :email, :contact_name, :shop_name, :city_id,
            :zipcode, :address, :phone, presence: true

  belongs_to :city

  def pending?
    true
  end
end
