require_relative 'enumerables.rb'

include Enumerable

puts "my_inject vs. inject"
numbers = [1, 2, 3, 4, 5]
puts numbers.my_inject { |sum, number| sum + number }
puts "-------------"
puts numbers.inject { |sum, number| sum + number }


puts "multiple_els"
puts numbers.my_inject { |acc, number| acc * number}