class PrintPrice < ActiveRecord::Base
  attr_accessible :price_tier, :pallet_type, :ink_type,
                  :base_color , :one_color, :two_color, :three_color,
                  :four_color, :five_color, :six_color, :seven_color,
                  :eight_color, :printer_id

  belongs_to :printer

  validates :printer_id, presence: true

  COLORS =  [ :base_color , :one_color, :two_color, :three_color,
            :four_color, :five_color, :six_color, :seven_color, :eight_color
          ]

  def self.colors_to_quote(number)
    COLORS[number]
  end

  def range
    min_print_qty..max_print_qty
  end
end