class Quote < ActiveRecord::Base
  attr_accessible :number_of_colors, :quantity

  def quote_quantity(qty)
    if (1..11).include?(qty)
      1
    elsif (12..23).include?(qty)
      2
    elsif (24..35).include?(qty)
      3
    elsif (36..47).include?(qty)
      4
    elsif (48..71).include?(qty)
      5
    elsif (72..143).include?(qty)
      6
    elsif (144..287).include?(qty)
      7
    elsif (288..575).include?(qty)
      8
    elsif (576..1171).include?(qty)
      9
    elsif (1172..2343).include?(qty)
      10
    elsif (2344..4687).include?(qty)
      11
    elsif (4688..9375).include?(qty)
      12
    elsif (9376..Inf).include?(qty)
      13
    end
  end
end



