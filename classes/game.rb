class Game
  attr_accessor :player1, :player2, :current_player, :current_question, :response

  def initialize()
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @response = nil
    # then we want to ask a question to the current player
  end

  def play_game
    while player1.lives > 0 || player2.lives > 0
      puts "----- NEW TURN -----"
      @current_question = Question.new(player1)
      @response = current_question.question
      if response == false
        player1.lives -= 1
        puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"

        if player1.lives == 0
          return puts "GAME OVER!!!"
        end

      else 
        puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"
      end

      puts "----- NEW TURN -----"
      @current_question = Question.new(player2)
      @response = current_question.question
      if response == false
        player2.lives -= 1
        puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"

        if player1.lives == 0
          return puts "GAME OVER!!!"
        end

      else 
        puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"
      end
    end
  end

  def shout_bot(message)
    puts "shout boy says: #{response}"
  end

end