require_relative 'enumerables.rb'

include Enumerable

puts "my_each_with_index vs. each_with_index"
numbers = ["one", "two", "three", "four", "five"]
numbers.my_each_with_index { |item, index| puts item, index}
puts "--------"
numbers.each_with_index { |item, index| puts item, index}