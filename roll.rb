class DiceGame
attr_accessor :faces, :point, :shooter, :opponent, :bet
# :score
# :dice_record

  @@rolls = 0
  @@result = nil
  @@players = []

  
  def initialize
  puts "who is player 1?"
 player1 = gets.chomp()
 
puts "who is player 2?"
 player2 = gets.chomp()
  
  @faces = faces
#  @dice_record = {}
  @point = point
#  @score = {}
  @bet = bet
  @player1 = player1
  @player2 = player2
  @@players = [player1, player2]
  @shooter = @@players[0]
  @opponent = @@players[-1]
  
  end
 


  
  def roller
     
	 puts "How much are you betting?"
	   @bet = gets.chomp
	   
	 loop do
	   puts "push enter to shoot or type 'end' to quit, or score to view score"
	   puts "shooter is #{@shooter}"
	   rollem = gets.chomp 
	 break if rollem == "end"
	
	 @@rolls += 1
     @faces = [rand(1..6), rand(1..6)]
	 @@result = @faces[0] + @faces[1]

		
		if (@@rolls == 1) && (@@result == 7)
			puts "roll #{@@rolls}"
			print @faces
			puts @@result
			puts "#{@shooter} wins, #{@opponent} pay #{@bet}, keep rolling"
	  
		elsif (@@rolls == 1) && (@@result == 11)
			puts "roll #{@@rolls}"
			print @faces
			puts @@result
			puts "#{@shooter} wins, #{@opponent} pay #{@bet}, keep rolling"
	  
		elsif (@@rolls == 1) && (@@result == 2)
			puts "roll #{@@rolls}"
			print @faces
			puts @@result
			puts "#{@shooter} loses, pay #{@bet} but keep rolling"
	  
		elsif (@@rolls == 1) && (@@result == 3)
			puts "roll #{@@rolls}"
			print @faces
			puts @@result
			puts "#{@shooter} loses, pay #{@bet} but keep rolling"
	  
		elsif (@@rolls == 1) && (@@result == 12)
			puts "roll #{@@rolls}"
			print @faces
			puts @@result
			puts "#{@shooter} loses, pay #{@bet} but keep rolling"
	  
		elsif (@@rolls == 1) 
			puts "roll #{@@rolls}"
			print @faces
			puts @@result
			@point = @@result
			puts "#{@shooter} your point is #{@point} keep rolling"
		end
	  
		if(@@rolls > 1) 
			if (@@result == @point)  
				puts "roll #{@@rolls}"
				print @faces
				puts @@result
				puts "Score! #{@shooter} wins, #{@opponent} pay #{@bet}, #{@shooter} keep rolling"
			elsif (@@result == 7)
				puts "roll #{@@rolls}"
				print @faces
				puts @@result
				@@players.rotate!
				@shooter = @@players[0]
				@opponent = @@players[-1]
				puts "#{shooter} wins, #{@opponent} pay #{@bet}. Change dice!"
				puts "shooter is now #{@shooter}, opponent is now #{@opponent}"
				puts "how much do you wanna bet?"
				@bet = gets.chomp
		    else
				puts "roll #{@@rolls}"
				print @faces
				puts @@result
				puts "#{@shooter} keep rolling"
	
			 end
	  
	    	  	  
	        end
	  	  
	    end	
	 
	 end
 end
  
test = DiceGame.new
test.roller

 