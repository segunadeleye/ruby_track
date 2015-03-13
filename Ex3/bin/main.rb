require_relative "../lib/fibonacci"

fibonacci = Fibonacci.new
fibonacci.calculate_series(1000) { |n| print n, " " }
