#!/usr/bin/ruby

def convert_from_base_ten(number, base)
    converted = 0
    power = 0
    while(number > 0) do
        converted = converted + (number % base) * 10 ** power
        power = power + 1
        number = number / base
    end
    print converted
    print " "
    return converted
end

def convert_to_base_ten(number, base)
    power = 0
    converted = 0
    while number > 0 do
        converted = converted + (number % 10) * base ** power
        number = number / 10
        power = power + 1
    end
    print converted
    print " "
    return converted
end

def convert_base(number, initial, target)
    if initial == target then
        return number
    elsif initial != 10 then
        number = convert_to_base_ten(number, initial)
    end
    return convert_from_base_ten(number, target)
end

sum = 0
(4..4).each do |current|
    n = 1
    while current > 0 do
        n = n + 1
        print n
        print " "
        print current
        print " "
        current = convert_to_base_ten(convert_from_base_ten(current, n), n+1) - 1
        puts
    end
    sum = sum + n - 1
end

puts sum
