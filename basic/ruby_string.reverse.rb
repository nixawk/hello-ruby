str = "hello Ruby"

## reverse -> new_str
# Returns a new string with the characters from str in reverse order

new_str = str.reverse    # a new string is created
puts new_str

## reverse! -> str
# Reverses str in place

puts str.reverse!        # original str is changed, Return original str
puts str

# References
# https://ruby-doc.org/core-2.2.0/String.html#method-i-reverse