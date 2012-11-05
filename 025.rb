#!/usr/bin/ruby
# Finds the first term in the Fibonacci sequence to contain 1000 digits

last = 1
second_last = 1
count = 2
while (last / 10**999) == 0 do
    count += 1
    tmp = second_last
    second_last = last
    last = second_last + tmp
end

puts count
