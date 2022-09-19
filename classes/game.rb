class Game
  attr_accessor :player1, :player2, :current_player, :current_question, :response

  def initialize()
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @response = nil
    @current_player = player1
    system('clear')
    puts "NEW GAME STARTED! :D"
  end

  def play_game
    puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"
    # game runs while neither player have 0 lives
    while current_player.lives > 0
      # create a new question using the current player
      puts "----- NEW TURN -----"
      @current_question = Question.new(current_player)

      # conditional handing of response (comes back as true or false)
      @response = current_question.question
      if response == false
        current_player.lives -= 1
        system('clear')
        puts "Woops, #{current_player.name} you got that wrong :("
        puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"

        # if the player loses :(
        if current_player.lives == 0
          
          # log stuff about the winning player
          if current_player.name == 'Player 1'
            puts "Player 2 wins with a score of #{player2.lives}/3"
          else
            puts "Player 1 wins with a score of #{player1.lives}/3"
          end

          return puts "----- GAME OVER -----"
        end
      else 
        system('clear')
        puts "Nice work #{current_player.name}!"
        puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"
      end

      # if the game continues, switch the current player
      if current_player.name == 'Player 1'
        @current_player = player2
      else
        @current_player = player1
      end
    end
  end

end