#!/usr/bin/ruby
# Finds the sum of all amicable numbers under 10000
require 'set'

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
    return divisors
end

def d(n)
    return find_divisors(n).inject(:+)
end

sum = 0
already_checked = Set.new
(1..10000).each do|current|
    if not already_checked.include? current then
        divisors_sum = d(current)
        if not divisors_sum.eql? current and d(divisors_sum).eql? current then
            sum = sum + current + divisors_sum
        end
        already_checked.merge [current, divisors_sum]
    end
end

puts sum
