class Dice
  attr_reader :faces, :rolls, :result
  
  def initialize(faces)
    @faces = faces
    @rolls = []
  end
  
  def roll(n=1)
    self.reset!
    n.times { @rolls << 1 + rand(@faces) }
    @result = @rolls.inject(:+)
  end
  
  def reset!
    @rolls.clear
    @result = nil
  end
end

dice = new Dice(ask("How many faces?").to_i)
dice.roll(ask("How many times? [default=1]").to_i)
alert("You rolled #{rolls} for a total of: #{dice.result}")