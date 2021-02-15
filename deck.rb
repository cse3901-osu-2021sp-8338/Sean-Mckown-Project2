require "./card"
class Deck
  #creates array with all cards
  def initialize
   @cards  = []
    ["red", "green", "purple"].each do |color|
      [1,2,3].each do |number|
        ["dimand","squiggle", "oval"].each do |shape|
          ["soild", "striped", "open"].each do |fill|
            @cards << Card.new(color, number, shape, fill)
          end
        end
      end
    end
  end
  
        
end 
