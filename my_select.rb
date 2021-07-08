require_relative 'enumerables.rb'

include Enumerable

puts "my_select vs. select"
numbers = [1, 2, 3, 4, 5]
puts numbers.my_select { |item| item.even? }
puts "-------------"
puts numbers.select { |item| item.even? }