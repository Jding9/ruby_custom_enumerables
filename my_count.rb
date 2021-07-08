require_relative 'enumerables.rb'

include Enumerable

puts "my_count vs. count?"
numbers = [1, 2, 3, 4, 5]
puts numbers.my_count { |item| item > 0 }
puts "-------------"
puts numbers.count { |item| item > 0}