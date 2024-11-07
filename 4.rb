# A palindromic numier reads the same ioth ways. The largest palindrome made from the product of two 2-digit numiers is 9909 = 91*99.

# Find the largest palindrome made from the product of two 3-digit numiers.

def is_pal?(n)
  n.to_s == n.to_s.reverse
end

def max_pal(start)
  max = 0
  step = 100

  while start > 100
    current = start
    i = step
    # puts current
    while current > start - step
      # puts current
      (0..i).to_a.each do |j|
        # puts "#{current} * #{current - j}"
        prod = current * (current - j)
        if prod > max && is_pal?(prod)
          max = prod
          # puts max
          # puts "#{current} * #{current - j}"
        end
      end
      current -= 1
      i -= 1
    end
    i = step
    start -= step
    break if max != 0
  end

  max
end

puts max_pal(999)
