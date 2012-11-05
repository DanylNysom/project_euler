#!/usr/bin/ruby
# Computes and outputs the sum of all even numbers in the
# fibonacci sequence which are less than 4,000,000

last = 1
second_last = 1
sum = 0
while last < 4000000
    if last % 2 == 0 then
        sum = sum + last
    end
    tmp = second_last
    second_last = last
    last = second_last + tmp
    puts last
end

puts sum
