#!/usr/bin/ruby
# Finds and outputs the 10001st prime

def calculate_prime_n(n)
    n = n - 1
    primes = [2, 3]
    primes_index = 1

    current_number = 5
    while primes_index < n
        val_is_prime = true
        primes.each do|prime|
            if current_number % prime == 0 then
                val_is_prime = false
            end
        end
        if val_is_prime then
            primes_index = primes_index + 1
            primes[primes_index] = current_number
        end
        current_number += 2
    end
    return primes[n]
end

puts calculate_prime_n(10001)
