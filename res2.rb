puts "give me text"
text = gets.chomp
characters = text.split

 def count_frequency(characters)
   counts = Hash.new(0)
   for character in characters
     counts[character] += 1
   end
    counts
 end
 
 print count_frequency(characters)