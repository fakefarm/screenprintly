module PrintersHelper
  def price_tiers(tier)
    case tier
    when 1
      "1 - 11"
    when 2
      "12 - 23"
    when 3
      "24 - 35"
    when 4
      "36 - 47"
    when 5
      "48 - 71"
    when 6
      "72 - 143"
    when 7
      "144 - 287"
    when 8
      "288 - 575"
    when 9
      "576 - 1171"
    when 10
      "1172 - 2343"
    when 11
      "2344 - 4687"
    when 12
      "4688 - 9375"
    else
      "9376 +"
    end
  end
end