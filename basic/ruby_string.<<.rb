
# str << integer -> str
# str << obj -> str

# Append - Concatenates the given object to str. If the object is a Integer, it is considered
# as a codepoint, and is converted to a character before concatenation.

str = ""
str << "hello "
str << "Ruby"

puts str