#!/usr/bin/ruby
# Ouputs the largest number which is the product of two
# three-digit numbers, and is a palindrome

def reverse(number)
    reversed = 0
    while(number > 0)
        reversed = (reversed * 10) + (number % 10)
        number = number / 10
    end
    return reversed
end

def is_palindrome(number)
    reversed = reverse(number)
    return reversed == number
end

palindromes = Array.new

(100..999).each do|num_one|
    (100..999).each do|num_two|
        product = num_one * num_two
        if is_palindrome(product) then
            palindromes << product
        end
    end
end

puts palindromes.sort[-1]
