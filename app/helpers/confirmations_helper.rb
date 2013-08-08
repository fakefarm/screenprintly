module ConfirmationsHelper
  def total_order(quantity, print_price, garment)
    shirt = quantity * print_price
    blanks = quantity * garment
    total = shirt + blanks
    total
  end

  def price_per_shirt(total, quantity)
    total / quantity
  end

  def colors_to_english(color)
    case color
      when 'one_color'   then '1 color'
      when 'two_color'   then '2 colors'
      when 'three_color' then '3 colors'
      when 'four_color'  then '4 colors'
      when 'five_color'  then '5 colors'
      when 'six_color'   then '6 colors'
      when 'seven_color' then '7 colors'
      when 'eight_color' then '8 colors'
    end
  end
end