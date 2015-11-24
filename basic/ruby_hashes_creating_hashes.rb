#!/usr/bin/ruby

# Hash Create
# Hash[key => value, ....]
# Hash.new(obj)
# Hash.new { |hash, key| block }

months = Hash.new("month")

puts "#{months}"
puts "#{months[0]}"
puts "#{months[9]}"

months = Hash["a" => 100, "b" => 200]
puts "#{months}"
puts "#{months['a']}"

