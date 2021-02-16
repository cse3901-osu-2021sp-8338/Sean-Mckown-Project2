require './card'
require './deck'
require './set'
require './player'

class Main
  
  #create deck of cards
  cards = Deck.new
  
  #prompt to start game
  puts 'Welcome to the game of set. Try to make a set of 3 out of the given cards'
  puts 'Enter player1s name: '
  player1 = gets.to_s.downcase
  puts 'Enter player2s name: '
  player2 = gets.to_s.downcase

  #create player object
  game = Player.new(player1,player2)
  answer = 'yes'

  #create hand with 12 new cards
  hand = cards.create_hand
    
  #play game until there are no more card or user is done
  while answer == 'yes' && hand.length>3
    #prints hand of 12 cards
    cards.print_cards(hand)
    #find who is current player
    game.get_player
    #prompt user for set
    set = Set.new
    set.get_set(hand)
    
    #check if correct set
    if set.is_set?
      puts 'Congratulation you found a set!'
      puts 'Would you like to continue playing?'
      game.give_point
      answer = gets.chomp.downcase
      
      #gets rid of set
      hand = set.delete_set(hand)
      
      #grabs 3 more cards from deck
      hand = cards.add_cards(hand)
  else
    puts 'That is not a set. Try again'
    end
        
  end
  #print ending message
  game.print_score  
end
