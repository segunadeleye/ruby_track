require "../lib/pascal_triangle"
require "../lib/factorial"

pascal_triangle = PascalTriangle.new

pascal_triangle.pascal(6) do |n, v|
  number = n.factorial / (v.factorial * (n - v).factorial)
  print number, " "
end
