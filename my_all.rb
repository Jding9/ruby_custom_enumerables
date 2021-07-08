require_relative 'enumerables.rb'

include Enumerable

puts "my_all vs. all"
numbers = [1, 2, 3, 4, 5]
puts numbers.my_all { |item| item.even? }
puts "-------------"
puts numbers.all? { |item| item.even? }