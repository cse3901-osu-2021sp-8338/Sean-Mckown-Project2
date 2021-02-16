class Player
  
  attr_reader :player1, :player2, :p1_score, :p2_score

  #create object to keep track of players score
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @p1_score = 0
    @p2_score = 0
  end

  #find current player 
  def get_player
    puts 'If you think you have a set enter your name before trying'
    @current_player = gets.to_s.downcase
  end

  #gives points to the correct player
  def give_point
    if@current_player == @player1
    @p1_score += 1
  else
    @p2_score += 1
  end
end

  #print message when game is over
  def print_score
    puts 'Game Over'
    if @p1_score > @p2_score
      puts "Congrats #{@player1} wins with #{@p1_score} correct sets"
    else if @p2_score > @p1_score
      puts "Congrats #{@player2} wins with #{@p2_score} correct sets"
    else
      puts 'It a tie'

    end 
  end  
end
end
