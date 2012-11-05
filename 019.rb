#!/usr/bin/ruby
# Counts the number of Sundays that fell on the 1st of a month
# in the 20th century (Jan 1st 1901 to Dec 31st 2000)

DaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

year = 1900
month = 0
day = 0

total = 0
while year <= 2000 do
    if year > 1900 && day == 1 then
        total = total + 1
    end
    
    day = day + 7

    days_this_month = DaysInMonth[month]
    if month == 1 && year % 4 == 0 then
        days_this_month = days_this_month + 1
    end

    if day > days_this_month then
        day = day - days_this_month
        month = month + 1
    end

    if month > 11 then
        month = 0
        year = year + 1
    end
end

puts total
