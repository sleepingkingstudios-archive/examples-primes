require_relative 'lib/ext/integer'

puts "Enter an integer greater than or equal to 2:"
print "> "

str = gets.strip
puts "I'm sorry, #{str} is not a valid integer." and exit unless str =~ /^-?\d+$/

int = str.to_i
puts "I'm sorry, #{int} is not greater than or equal to 2." and exit unless int > 1

factors = int.prime_factors
puts "The greatest prime factor of #{int} is #{int.prime_factors.last}."
