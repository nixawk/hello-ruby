
## ascii_only?

# Return true for a string which has only ASCII characters.

puts "abc".force_encoding("UTF-8").ascii_only?
puts "abc\u{6666}".force_encoding("UTF-8").ascii_only?