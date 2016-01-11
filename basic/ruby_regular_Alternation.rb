
# We knoen that the vertical bar is special, because our line spliting pattern
# had to escape it with a backslash. That's because an unescaped vertical ``|''
# matches either the regular expression that precedes it or the regular
# expression that follows it.

def showRE(aString, pattern)
  if aString =~ pattern
    "#{$`}<<#{$&}>>#{$'}"
  else
    'No match'
  end
end

aString = "This is a ruby string"
puts showRE(aString, /u|e/)
puts showRE(aString, /ru|de/)
puts showRE(aString, /a ruby|a python/)

