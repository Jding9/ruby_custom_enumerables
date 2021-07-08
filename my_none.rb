require_relative 'enumerables.rb'

include Enumerable

puts "my_none vs. none?"
numbers = [1, 2, 3, 4, 5]
puts numbers.my_none { |item| item == 6 }
puts "-------------"
puts numbers.none? { |item| item == 6 }