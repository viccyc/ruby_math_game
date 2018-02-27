# Game class - pass the players as parameters
# changes managed here - lives left
# has user input
# has Turn and Question
# variable stores Turn number
# method: calculates how many lives the player has left
# method: figures out who's turn it is - set current player and switch every time
# method: game loop (where each instance of the loop is the other players turn) - diff to above??
# method: creates a math question based on equation - could be a separate function - 
# how to know when game is over?? - needs lives left

class Game
  attr_accessor :turn, :current_player, :player1, :player2

  def initialize
    @turn = turn
    @player1 = Player.new('Player1', 3)
    @player2 = Player.new('Player2', 3)
    @current_player = self.player1
    @game_playing = true
    while @game_playing do
      play_round
      puts "----- NEW TURN -----"
    end
  end

  def whos_turn
    if @current_player == @player1
      @current_player = @player2
    end
    return @current_player
  end     

  # def lives_left(correct_answer, current_player)
  #   if correct_answer != true
  #     @current_player.lives -= 1
  #   else
  #     @current_player.lives
  #   end
  # end

  def generate_question
    first_number = 0
    second_number = 0
  end

  def play_round

    @game_playing = false
  end

end

