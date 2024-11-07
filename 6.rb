# The sum of the squares of the first ten natural numbers is SUM(n**2) where n <= 10 = 385
# The square of the sum of the first ten natural numbers is (SUM(n) n <= 10)**2 = 3025
# The difference between them is 3025 - 385 = 2640

# Do the same but for the first 100 nat nums

# def sum_of_squares(limit)
#   total = 0
#   (1..limit).each { |n| total += n**2 }
#   total
# end

# def square_sum(limit)
#   sum = 0
#   (1..limit).each { |n| sum += n }
#   sum**2
# end

sum_of_squares = 0
square_sum = 0
(1..100).each do |n|
  sum_of_squares += n**2
  square_sum += n
end

puts square_sum**2 - sum_of_squares
