require_relative "../lib/pascal_triangle"
require_relative "../lib/fixnum"

pascal_triangle = PascalTriangle.new

pascal_triangle.draw(6) do |row, number|
  pascal_number = row.factorial / (number.factorial * (row - number).factorial)
  print pascal_number, " "
end
