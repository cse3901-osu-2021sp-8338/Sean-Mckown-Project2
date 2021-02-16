require './deck'
require './card'

class Set

  def get_set(hand)
    #check for error in input
    passed = false
    while !passed
    #get user input for cards they think are set
    puts 'Enter number of first card in set'
    card1 = gets.to_i
    puts 'Enter number of second card in set'
    card2 = gets.to_i
    puts'Enter number of third card in set'
    card3 = gets.to_i
    
      #make sure index is in bounds and no repeat cards
      if card1.between?(0,11) && card2.between?(0,11) && card3.between?(0,11) && card1!=card2 && card3!=card2 && card1!=card3
         #create array out of possible set
        @set = [hand[card1], hand[card2], hand[card3]]
        passed  = true
 
      else puts 'Error, must enter number between 0 and 11 and cannot be same card'
      end
    end 
  end

  def is_set?
    #collect all the same type attributes in an array
    numbers = []
    color = []
    shape = []
    fill =[]
    @set.each do |card|
      numbers << card.number
      color << card.color
      shape << card.shape
      fill << card.fill
    end
    #if 2 cards have the same value but not the thrid, it is not a set
    numbers.uniq.count!=2 && color.uniq.count!=2 && shape.uniq.count!=2 && fill.uniq.count!=2
  end

  #deletes the set from the hand
  def delete_set(hand)
   hand - @set
  end
  
end
