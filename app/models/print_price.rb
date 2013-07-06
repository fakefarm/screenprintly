class PrintPrice < ActiveRecord::Base
  attr_accessible :min_print_qty, :max_print_qty, :pallet_type, :ink_type,
                  :base_color , :one_color, :two_color, :three_color,
                  :four_color, :five_color, :six_color, :seven_color, :eight_color

  def range
    min_print_qty..max_print_qty
  end
end
