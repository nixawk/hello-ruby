#!/usr/bin/ruby

# Arrays keep track of their own length at all times. To query an array about
# the number of elements it contains, use length, count or size.

browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']

puts browsers.length
puts browsers.count

# To check whether an array contains any elements at all

puts browsers.empty?
puts browsers.include?('Konqueror')
