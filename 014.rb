#!/usr/bin/ruby
# Finds the starting number of the longest Collatz chain, where the starting number
# is less than 1000000

max_count = 0
start_number = 0

(1..1000000).each do|current_start|
    current = current_start
    counter = 0
    while(current != 1)
        if current & 1 == 0
            current = current / 2
        else
            current = 3*current + 1
        end
        counter = counter + 1
    end
    if counter > max_count
        max_count = counter
        start_number = current_start
    end
end

puts start_number
