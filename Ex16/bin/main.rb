require "../lib/string"

puts "Enter text to look through..."
string = gets.chomp

puts "Enter what to look for..."
keyword = gets.chomp

string.search(keyword)
