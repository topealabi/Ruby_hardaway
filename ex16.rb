#creates a variable called filename which is made up of the first element in the ARGV array
# the ARGV creates an array of the command-line arguments afther the name of the program
#this is a way to pass command line arguments into this code
filename = ARGV.first
#script is a variable we created that points to $0 which is the name of the program
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "if you do want that, hit RETURN."

print "? "
#stdin accepts an input. in this case just pauses the program to wait for our response either RETURN or (^C)
STDIN.gets

puts "Opening the file..."
#creates variable target that represents the operation of opening the filename passed in on line one
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
#performs the truncate method on the target variable
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."
#stdin.gets.chomp accepts an input and removes any newline characters that a user might pass in
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

#write method acting on target variable
#target.write(line1)
#target.write("\n")
#target.write(line2)
#target.write("\n")
#target.write(line3)
#target.write("\n")

target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

puts "And finally, we close it."
#closes target variable
target.close()