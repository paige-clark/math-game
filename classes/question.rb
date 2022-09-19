class Question
  attr_accessor :player, :randomNum1, :randomNum2
  def initialize(player)
    @player = player
    @randomNum1 = 1 + rand(20)
    @randomNum2 = 1 + rand(20)
  end

  def math
    result = randomNum1 + randomNum2
  end

  def question
    puts "#{player.name}: what is #{randomNum1} + #{randomNum2}?"
    # puts "the answer is #{math}"
    print '> '
    answer = gets.chomp
    puts "You said #{answer}"
    # what if answer is not a number?
    if answer.to_i != math
      return false
    elsif answer.to_i == math
      return true
    end
  end
end