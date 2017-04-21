#!/usr/bin/ruby

# A final use of the versatile range is as an interval test: seeing if
# some value falls within the interval represented by the range. This
# is done using ===, the case equality operator.

if ((1..10) === 5)
  puts "5 lies in (1..10)"
end

if (('a'..'j') === 'c')
  puts "c lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
  puts "z lies in ('a'..'j')"
end
