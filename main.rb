require './card'
require './deck'
require './set'

class Main
  
  #create deck of cards
  cards = Deck.new

  puts 'Welcome to the game of set. Would you like to play? Type yes or no'
  String answer = gets.chomp.downcase
  while answer == 'yes' && !cards.empty?
    #prints hand of 12 cards
    hand = cards.create_hand
    cards.print_cards
    set = Set.new
    set.get_set(hand)
   puts  set.is_set?
    
    
    puts 'Would you like to continue playing'
   
    answer = gets.chomp.downcase
       end
       
 

 
  
end
