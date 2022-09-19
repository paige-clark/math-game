class Game
  attr_accessor :player1, :player2, :current_player, :current_question, :response

  def initialize()
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @response = nil
    @current_player = player1
  end

  def play_game
    while current_player.lives > 0
      puts current_player.name
      puts "\n----- NEW TURN -----"
      @current_question = Question.new(current_player)
      @response = current_question.question
      if response == false
        current_player.lives -= 1
        puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"
        if current_player.lives == 0
          return puts "GAME OVER!!!"
        end
      else 
        puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"
      end
      if current_player.name == 'Player 1'
        @current_player = player2
      else
        @current_player = player1
      end
    end
  end

  def shout_bot(message)
    puts "shout boy says: #{response}"
  end

end