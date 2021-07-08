require_relative 'enumerables.rb'

include Enumerable

puts "my_any vs. any?"
numbers = [1, 2, 3, 4, 5]
puts numbers.my_any { |item| item == 4 }
puts "-------------"
puts numbers.any? { |item| item == 4 }