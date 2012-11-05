#!/usr/bin/ruby

TenThroughTwenty = [3, 6, 6, 8, 8, 7, 7, 9, 8, 8]

OnesLetterCounts = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3]
TensLetterCounts = [0, 3, 6, 6, 5, 5, 5, 7, 6, 6, 10]

total = 0
(1..1000).each do|current|
    magnitude = 0
    current_sum = 0
    print current
    if current % 100 > 10 && current % 100 < 20 then
        current_sum = current_sum + TenThroughTwenty[current % 10]
        print " "
        print TenThroughTwenty[current % 10]
        magnitude = 2
        current = current / 100
    end
    
    while current > 0 do
        print " "
        if current % 10 == 0 then
        
        elsif magnitude == 0 then
            current_sum = current_sum + OnesLetterCounts[current%10]
            print OnesLetterCounts[current%10]
        elsif magnitude == 1 then
            current_sum = current_sum + TensLetterCounts[current%10]
            print TensLetterCounts[current%10]
        elsif magnitude == 2
            if current_sum > 0 then
                current_sum = current_sum + OnesLetterCounts[current%10] + 10
                print OnesLetterCounts[current%10] + 10
            else
                current_sum = current_sum + OnesLetterCounts[current%10] + 7
                print OnesLetterCounts[current%10] + 7
            end
        elsif magnitude == 3 then
            current_sum = current_sum + 11
            print 11
        end
        magnitude = magnitude + 1
        current = current / 10
    end
    total += current_sum
    puts
end

puts total
