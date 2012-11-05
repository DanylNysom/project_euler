#!/usr/bin/ruby
# Computes the difference between the square of the sum of the numbers 1..100 and
# the sum of the squares of teh numbers 1..100

def sum_of_squares(max)
    sum = 0
    (1..max).each do|current|
        sum = sum + current**2
    end
    return sum
end

def square_of_sums(max)
    sum = 0
    (1..max).each do|current|
        sum = sum + current
    end
    return sum**2
end

puts square_of_sums(100) - sum_of_squares(100)
