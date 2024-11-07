# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a**2 + b**2 = c**2

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product of abc.

# 1 2 997
# 1 3 996
# 1 4 995
# ...
# 1 449 500
# 2 3 995
# 2 4 994
# 2 5 993
# ...
# 2 448 500
# 3 447 500
# 4 446 500
# ...
# 249 251 500

def pyth_trip?(a, b, c)
  return (a < b && b < c) && (a**2 + b**2 == c**2)
end

def magic_trip_factor
  a = 1

  while a < 250
    b = a + 1
    c = 1000 - (a + b)

    # puts "#{a}, #{b}, #{c}"
    while c > 500
      return [a, b, c] if pyth_trip?(a, b, c)

      b += 1
      c -= 1
    end
    # puts "#{a}, #{b}, #{c}"

    a += 1
  end
end

puts magic_trip_factor
