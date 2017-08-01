
class Game
  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @current_player = @player1
    @current_play = false
  end

  def game_start(question)
    while @player1.health > 0 || @player2.health > 0
      if @current_play === false
        @current_player = @player1
      else
        @current_player = @player2
      end

      if @current_player === @player1
        puts "Player1: #{question}"
        puts "P1: #{@player1.health}/3 vs P2: #{@player2.health}/3"
      else
        puts "Player2: #{question}"
        puts "P1: #{@player1.health}/3 vs P2: #{@player2.health}/3"
      end

      player_ans = gets.chomp
      if question != player_ans
          @current_player.health -= 1
          @current_play = !@current_play
      end
      puts "- - - - - NEW TURN - - - - -"
    end

    puts "- - - - - GAME OVER - - - - -"
  end

end
