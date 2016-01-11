
# By default, a regular expression will try to find the first match for the
# pattern in a string. Match /iss/ against the string ``Mississippi,'' and it
# will find the substring ``iss'' starting at position one. But what if you
# want to force a pattern to match only at the start or end of a string ?

# The pattern ^ and $ match the beginning and end of a line, respectively.
# These are often used to anchor a pattern match: for example, /^option/
# matches the word ``option'' only if it appears at the start of a line. The
# sequence \A matches the beginning of a string, and \z and \Z match the end
# of a string. (Actually, \Z matches the end of a string unless the string
# ends with a ``\n'') , it which case it matches just before the ``\n''.)


def showRE(aString, pattern)
  if aString =~ pattern
    "#{$`}<<#{$&}>>#{$'}"
  else
    'No match'
  end
end

puts showRE("this is\nthe time", /^the/)
puts showRE("this is\nthe time", /is$/)
puts showRE("this is\nthe time", /\Athis/)
puts showRE("this is\nthe time", /\Athe/)

# Similarly, the patterns \b and \B match word boundaries and nonword
# boundaries, respectively. Word characters are letters, numbers and
# underscore.

puts showRE("this is\nthe time", /\bis/)
puts showRE("this is\nthe time", /\Bis/)
