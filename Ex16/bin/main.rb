require_relative "../lib/string"

puts "Enter text to look through..."
string = gets.chomp

puts "Enter what to look for..."
keyword = gets.chomp

string, occurrence = string.search(keyword)
puts "#{string} | Total occurrences found: #{occurrence}"
