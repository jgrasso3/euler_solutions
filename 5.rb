# 2050 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 - 20?

def even_div?(n)
  (11..20).each { |div| return false unless n % div == 0 }

  true
end

check = false
n = 0
while !check && n < 10**10
  n += 20
  check = even_div?(n)
end

puts n
