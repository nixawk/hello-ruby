#!/usr/bin/ruby

# Ruby deals with strings as well as numerical data.
# A string may be double-quoted("...") or single-quoted('...')

puts "a\nb\nc"
puts 'a\nb\nc'

# Double- and single-quoting have different effects in some cases.
# A double-quoted string allows character escapes by a leading backslash, and
# the evaluation expression using #{}. A single-quoted string does not do this
# interpreting; what you see is what you get.

puts "foo" + "bar"
puts "foo" * 2

str = "hello world"
puts str[0,2]
puts str[0,3]
puts str[0..2]
puts str[-2,2]
