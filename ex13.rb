first, second, third = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
print "what is your fourth variable? "
fourth= STDIN.gets.chomp() 
puts "\n" + "Your fourth variable is: #{fourth}"