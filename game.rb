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
  end

  def start_game
    while @game_playing == true do
      puts "in the while loop"
      play_round
      whos_turn
    end
  end

  def whos_turn
    if @current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
    return @current_player
  end     

  def generate_question
    number_array = []
    first_number = rand(1...12)
    second_number = rand(1...12)
    number_array << first_number
    number_array << second_number
    puts "#{current_player.name}: What does #{first_number} plus #{second_number} equal?"
    return number_array
  end

  def play_round
    puts "----- NEW TURN -----"
    number_array = generate_question
    answer = Integer(gets.chomp)
    if answer == number_array[0] + number_array[1]
      puts "YES! #{current_player.name} you are correct"
      @game_playing = false
    else
      puts "#{current_player.name}  Seriously?  Noo!!!"
      @current_player.lives -= 1
    end

    if @current_player.lives == 0
      puts "We're done!"
      @game_playing = false
    end
    return 
  end
end

