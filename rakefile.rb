task :mac_and_cheese => [:buy_pasta, :buy_cheese, :boil_water]do
	puts "making mac and cheese"
	end
	
task :buy_pasta do
	puts "buying pasta"
	end
	
task :buy_cheese do
	puts "buying cheese"
	end
	
task :boil_water => [:buy_pasta, :buy_cheese] do
	puts "boiling water"
	end
	
	