class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
    # puts "Hello from #{self.name}, I have #{self.lives}/3 lives remaining!"
  end


end