require_relative "../lib/string"

puts "Please enter text here: "
input = gets.chomp
puts "'#{input}' has been modified to '#{input.replace_vowels}'"
