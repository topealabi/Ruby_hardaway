cars = 100
space_in_car = 5
drivers = 30
passengers = cars * space_in_car
cars_not_drive = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_car
passengers_per_car = passengers / cars_driven

puts "there are #{cars} cars available."
puts "there are only #{drivers} drivers available"
