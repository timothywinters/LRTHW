# number of cars
cars = 100
#how many people per car
space_in_a_car = 4
# floating point numbers are for a more accurate math level and to be able to use decimle numbers.
#Self explanitory 
drivers = 30
#See drivers
passengers = 90
#Calculation using variables
cars_not_driven = cars - drivers
# another of above
cars_driven = drivers
# yet more variable math
carpool_capacity = cars_driven * space_in_a_car
# final variable math.
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
