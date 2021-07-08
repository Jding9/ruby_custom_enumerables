require_relative 'enumerables.rb'

include Enumerable

puts "my_map vs. map?"
numbers = [1, 2, 3, 4, 5]
puts numbers.my_map { |item| item += 2 }
puts "-------------"
puts numbers.map { |item| item += 2}


puts "proc test"
method = Proc.new { |item| item += 2}
puts numbers.my_map(method)
puts numbers.map { |item| item += 2}
