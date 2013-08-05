class GarmentSelector < ActiveRecord::Base
  attr_accessible :short_sleeve_tshirt, :printer_id, :comment, :garment_price
  belongs_to :printer
  validates :garment_price, presence: true

  before_validation :add_price



private

  def add_price
    @garment_prices = GarmentPrice.where(printer_id: self.printer_id)

    @budget = @garment_prices.where(quality: 'Closeout') # 'budget'
    @budget_max = @budget.max_by { |g| g.price }

    @brand = @garment_prices.where(quality: 'Standard') # 'brand'
    @brand_max = @brand.max_by { |g| g.price }

    @boutique = @garment_prices.where(quality: 'Premium') # 'boutique'
    @boutique_max = @boutique.max_by { |g| g.price }

    if self.short_sleeve_tshirt == 'budget'
      self.garment_price = @budget_max.price
    elsif  self.short_sleeve_tshirt == 'brand'
      self.garment_price = @brand_max.price
    else self.short_sleeve_tshirt == 'boutique'
      self.garment_price = @boutique_max.price
    end
  end
end
