#!/usr/bin/ruby
# Counts the number of routes from the top left to bottom right corner of a 20x20 grid

WIDTH = 20
HEIGHT = 20

@count = 0
@counts = Array.new(WIDTH+1) { Array.new(HEIGHT+1, 0) }

def count_routes(width, height)
    if (width == 0 or height == 0) then
        return 1
    elsif (@counts[width][height] > 0) then
        return @counts[width][height]
    else
        @counts[width][height] = count_routes(width-1, height) + count_routes(width, height-1)
        return @counts[width][height]
    end
end

puts count_routes(WIDTH, HEIGHT)
