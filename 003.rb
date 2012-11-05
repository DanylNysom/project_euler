#!/usr/bin/ruby
# Outputs the largest prime factor of 600851475143

@primes = Array.new
@primes_index = 1
@primes[0] = 2
@primes[1] = 3

def add_primes(requested, max)
    count = 0
    more = true
    @primes[@primes_index].step(max,2).each do|current_number|
        val_is_prime = true
        @primes.each do|prime|
            if current_number % prime == 0 then
                val_is_prime = false
            end
        end
        if val_is_prime then
            @primes_index = @primes_index + 1
            @primes[@primes_index] = current_number
            count = count + 1
        end
        more = (current_number < max)
        if count >= requested or !more then
            return
        end
    end
end

def is_prime(number)
    return @primes.index(number) != nil
end

def prime_factors(number)
    factors = Array.new
    while(!is_prime(number))
        found_factor = false
        @primes.each do|prime|
            if number % prime == 0 then
                factors << prime
                number = number / prime
                found_factor = true
                break
            end
        end
        if !found_factor then
            add_primes(1, number)
        end
    end
    return factors << number
end

puts prime_factors(600851475143).sort[-1]
