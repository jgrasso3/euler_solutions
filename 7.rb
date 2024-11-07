# What is the 10001st prime?

@primes = [2, 3]

def next_prime
  np = @primes.last
  is_prime = false
  
  while !is_prime
    np += 2
    is_prime = true
    @primes.each do |p|
      if np % p == 0
        is_prime = false
        break
      end
    end
  end

  @primes.append np
  np
end

while @primes.length < 10001
  next_prime
end

puts @primes.last
