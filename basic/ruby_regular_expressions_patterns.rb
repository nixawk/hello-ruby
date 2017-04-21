
# Every regular expression contains a pattern, which is used to match the
# regular expression against a string.

# Withinn a pattern, all characters except ., |, (, ), [, {, +, \, ^, $, and ?
# match themselves.

# If you want to match one of these special characters literally, precede it
# with a backslash.

def showRE(aString, pattern)
  if aString =~ pattern
    "#{$`}<<#{$&}>>#{$'}"
  else
    'No match'
  end
end

puts showRE('yes | no', /\|/)
puts showRE('yes (no)', /\(no\)/)
puts showRE('are you sure?', /e\?/)

# A backslash followed by an alphanumeric character is used to introduce a
# special match construct. In addition, a regular expression may contain
# #{...} expression substitutions
