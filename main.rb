require './card'
require './deck'
require './set'

class Main
  
  #create deck of cards
  cards = Deck.new

  puts 'Welcome to the game of set. Try to make a set of 3 out of the given cards'
  answer = 'yes'

  #create hand with 12 new cards
  hand = cards.create_hand
  #prints hand of 12 cards
  cards.print_cards(hand)
  while answer == 'yes' && !hand.empty?
    #prompt user for set
    set = Set.new
    set.get_set(hand)
    
    #check if correct set
    if set.is_set?
      puts 'Congratulation you found a set!'
      puts 'Would you like to continue playing?'
      answer = gets.chomp.downcase
      #gets rid of set
      hand = set.delete_set(hand)
      #grabs 3 more cards from deck
      hand = cards.add_cards(hand)
      cards.print_cards(hand)
  else
    puts 'That is not a set. Try again'
    end
        
  end
       
end
