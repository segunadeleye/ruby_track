require_relative "../lib/string"

string = "Where is the MONEY i 232 !@#\{4+4}$%^}"
count = string.count_characters

puts <<-eos
Number of lowercase characters: #{count[:lowercase]}
Number of uppercase characters: #{count[:uppercase]}
Number of digits: #{count[:digit]}
Number of special characters: #{count[:special_character]}
eos
