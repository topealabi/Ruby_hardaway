
class Dice
#adding score, change from reader to accessor
  attr_accessor  :faces, :result, :score, :shooter, :opponent
  @@rolls = 0
  @@players = {}
  @@score = {}
  @@record = {}
  @@bet = 0
  @@point = 0
#adding opponent, shooter, and rolls to   

#changing inputs to initialize 
#adding bet, score, 
  def initialize(player1,player2)
    @player1 = player1
	@player2 =player2
	@shooter = shooter
	@opponent = opponent
    @faces = faces
    @result = result
	
	
	
  end
  
#<new code  
if @@rolls == 0
@@players[@shooter] = @player1  
end
puts "How much do you wanna bet?"
@@bet = gets.chomp

#new code/>  
  def roll 
# must edit until statement  
    loop do
	puts "push enter to shoot or type'end' to quit"
    @@rollem = gets.chomp
   break if @@rollem == "end"
     
    @result = rand(1..6) + rand(1..6)
	@@rolls +=1
#<new code
      case @@rolls == 1 
	  when(@result == 7 || @result == 11)
	    @@score[@shooter] = @@bet * 2
		puts "#{@shooter} wins, keep rolling"
	  when (@result == 2 || @result == 3 || @result == 12)
	    @@score[@opponent] = @@bet * @@players.lenght
		puts "#{@shooter} loses, but keep rolling"
		else @@point = @result
		end
		end
		if @@point == @result
		@@score[@shooter] = @@bet * @@players.lenght
		puts "#{@shooter} wins"
		elsif @result == 7
		puts "#{@shooter} loses"
		@@score[@opponent] = @@bet * @@players.lenght
		@@players[shooter] = @@players[+1]
		
		end
		end
	
	@@record[@@rolls] = @result
	@@record.each { |key, value| puts "#{key} => #{value}"}	
	print "Roll# #{@@rolls} =>  #{@result}\n "	
		
      end
#new code/>
    
#commented out this next line	
#  print "Roll# #{@@rolls} =>  #{@result}\n "
#	@@record[@@rolls] = @result
#	@@record.each { |key, value| puts "#{key} => #{value}"}
	
  #  end
	
	#puts "\n\ Roll# #{@@rolls}" 
#  end
  
#end
    
game = Dice.new("gimmy","hat")
game.roll
  
  
  