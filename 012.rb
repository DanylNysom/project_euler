#!/usr/bin/ruby
# Finds the smallest triangle number to have over 500 divisors
# A triangle number is formed by adding each of the integers 1..n,
# so the 7th triangle number is 1+2+3+4+5+6+7 = 28

def find_divisors(number)
    divisors = [1]
    (2..Math.sqrt(number)).each do|possible_divisor|
        if number % possible_divisor == 0
            divisors << possible_divisor
            if possible_divisor != Math.sqrt(number)
                divisors << number / possible_divisor
            end
        end
    end
    return divisors << number
end

def count_divisors(number)
    divisors = find_divisors(number)
    return divisors.length
end

number = 0
additive_term = 1

while count_divisors(number) <= 500
    number = number + additive_term
    additive_term = additive_term + 1
end

puts number
