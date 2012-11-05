#!/usr/bin/ruby
# Computes and outputs the sum of all numbers less than
# 1000 which are evenly divisible by 3 or 5

sum = 0
(1..999).each do|number|
    if number % 3 == 0 || number % 5 == 0
        sum = sum + number
    end
end

puts sum
