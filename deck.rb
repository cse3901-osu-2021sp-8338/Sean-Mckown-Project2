require "./card"
class Deck
  
  def initialize
    #creates array with all 81 cards
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
  
  def create_hand
    #creates an array out of first 12 cards in deck
    @cards.shuffle!
    @hand = @cards.shift(12)
  end

  def empty?
    @cards.empty?
  end

  def print_cards
    #prints set of cards
    for i in 0..@hand.length-1 
      puts "Card ##{i} Color:#{@hand[i].color} Shape:#{@hand[i].shape} Number:#{@hand[i].number} Fill:#{@hand[i].fill}"  
    end    
  end
 
end 
