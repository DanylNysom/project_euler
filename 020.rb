#!/usr/bin/ruby
# Finds the sum of the digits of the value of 100!

def factorial(number)
    if number == 1 then return 1
    else return number * factorial(number-1)
    end
end

number = factorial(100)
sum = 0
while number > 0
    sum = sum + number % 10
    number = number / 10
end

puts sum
