class Professionals
def Work
	puts "I'm a pro"
	end
alias :job :Work
end

you = Professionals.new
you.job

begin {
what = gets.chomp
if what == "bullshitin"
puts "fuk outta here"
elsif what == "grinding"
puts "right on"
end
rescue what = "grinding"



end