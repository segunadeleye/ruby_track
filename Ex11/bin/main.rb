require "../lib/pascal_triangle"
require "../lib/factorial"

pascal = PascalTriangle.new

pascal.pascal(6) do |n, v|
  pascal = n.factorial / (v.factorial * (n - v).factorial)
  print pascal, " "
end
