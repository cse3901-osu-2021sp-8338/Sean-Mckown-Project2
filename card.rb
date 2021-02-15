#creates a card

class Card
  attr_reader :color, :number, :shape, :fill

  def initialize(color, number, shape, fill)
    @color = color
    @number = number
    @shape = shape
    @fill = fill
  end

end 
    
