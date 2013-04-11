# variable input_file assigned to first argument in ARGV array
input_file = ARGV[0]

#function print_all operates on argument f
def print_all(f)
#displays contents of f
	puts f.read()
end

#funtion rewind operates on f
def rewind(f)
#seeks to the absolute location given by 0
	f.seek(0, IO::SEEK_SET)
end

#function prin_a_line operates on arguments line_count and f
def print_a_line(line_count, f)
#displays contents of line_count and method readline on f
	puts "#{line_count} #{f.readline()}"
end

#variable current_file opens input_file
current_file = File.open(input_file)

puts "First lets's print the whole file:"
puts # a blank line

#perfoms print_all function on current_file
print_all(current_file)

puts "Now let's rewind, kind of like a tape"

#perfoms rewind function on current_file
rewind(current_file)

puts "Let's print three lines:"

current_line = 0
current_line =+ 1
print_a_line(current_line, current_file)

#STDIN.gets

#current_line = 1
#print_a_line(current_line, current_file)

#current_line = current_line + 1
#print_a_line(current_line, current_file)

#current_line = current_line + 1
#print_a_line(current_line, current_file)