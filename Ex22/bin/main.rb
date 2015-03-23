require_relative "../lib/name"

puts "Enter your first name..."
first_name = gets.chomp

puts "Enter your last name..."
last_name = gets.chomp

name = Name.new(first_name, last_name)

puts "Valid input.\n\n"
puts "Name: #{first_name} #{last_name}"
