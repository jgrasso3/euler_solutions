# Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?

big_num = File.read('../1000_digit_number.txt').delete("\n")

max = 0
digits = 13
(0..999 - digits).each do |index|
  check = 1
  big_num[index..(index + digits - 1)].chars.each { |n| check *= n.to_i }

  if check > max
    max = check 
    # puts big_num[index..(index + digits - 1)]
  end
end

puts max
