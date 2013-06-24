class Printer < ActiveRecord::Base
  attr_accessible :email, :contact_name, :address, :zipcode, :phone, :pending

  validates :email, :contact_name, :address,
            :zipcode, :phone, :website,
            presence: true

  def pending?
    true
  end
end
