# The prime factors of 13195 are 5, 7, 13, 29

# What is the largest prime factor of the number 600851475143

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

def prime_factors(n)
  factors = []

  @primes.each do |prime|
    while n % prime == 0
      n = n / prime
      factors.append prime unless factors.include? prime
    end
  end

  while n != 1
    prime = next_prime

    while n % prime == 0
      n = n / prime
      factors.append prime unless factors.include? prime
    end
  end

  factors
end

puts prime_factors(13195).last
puts prime_factors(29).last
puts prime_factors(600851475143).last # 6857
