require './questions'

class Game
  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @current_player = @player1
    @current_play = false
  end

  def game_start
    while @player1.health > 0 && @player2.health > 0
      question = Questions.new
      the_question = question.question
      the_answer = question.answer

      if @current_play === false
        @current_player = @player1
      else
        @current_player = @player2
      end

      if @current_player === @player1
        puts "Player1: #{the_question}"
      else
        puts "Player2: #{the_question}"
      end

      player_ans = gets.chomp
      if the_answer != player_ans.to_i
          @current_player.health -= 1
        puts "Nop! But you got this!"
      else
        puts "YES! You are correct!"
      end

      if @player1.health > 0 && @player2.health > 0
        puts "P1: #{@player1.health}/3 vs P2: #{@player2.health}/3"
        puts "- - - - - NEW TURN - - - - -"
        @current_play = !@current_play
      else
        if @player1.health > 0
          puts "Player 1 wins with #{@player1.health}/3"
        else
          puts "Player 2 wins with #{@player2.health}/3"
        end
        puts "- - - - - GAME OVER - - - - -"
        puts "Good bye!"
      end
    end
  end
end
