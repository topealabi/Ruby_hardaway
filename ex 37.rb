class Professionals
def Work
	puts "I'm a pro"
	end
alias :work :job
end

you = Work.new
you.work

