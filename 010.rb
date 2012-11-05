#!/usr/bin/ruby
# Finds the sum of all the primes below two million

def add_primes_upto(max)
    primes = [2, 3]
    primes_index = 1
    sum = 2 + 3

    5.step(max, 2).each do|current_number|
        val_is_prime = true
        primes.each do|prime|
            if prime > Math.sqrt(current_number).to_i
                break
            elsif current_number % prime == 0 then
                val_is_prime = false
                break
            end
        end
        if val_is_prime && current_number < max then
            primes_index = primes_index + 1
            primes[primes_index] = current_number
            sum = sum + current_number
        end
    end
    return sum
end

puts add_primes_upto(2000000)
