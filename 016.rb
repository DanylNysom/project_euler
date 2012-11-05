#!/usr/bin/ruby
# Finds the sum of the digits of the value of 2^1000

number = 2**1000
sum = 0
while number > 0
    sum = sum + number % 10
    number = number / 10
end

puts sum
