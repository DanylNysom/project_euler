#!/usr/bin/ruby
# Finds the only Pythagorean triplet such that a + b + c = 1000

(1..1000).each do|a|
    (1..1000).each do|b|
        c = 1000 - a - b
        if (a**2 + b**2) == c**2
            puts a*b*c
        end
    end
end
