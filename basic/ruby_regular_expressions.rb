
# A regular expression is simply a way of specifying a pattern of characters
# to be matched in a string. In Ruby, you typically create a regular
# expression by writing a pattern between slash characters (/pattern/). And,
# Ruby being Ruby, regular expressions are of course objects and can be
# manipulated as such.

# For example, you could write a pattern that matches a string containing the
# text 'Perl' or the text 'Python' using the following regular expression.
#
#  /Perl|Python/
#  /P(erl|ython)/

# Once you have created a pattern, it seems a shame not to use it. The match
# operator '=~' can be used to match a string against a regular expression. If
# the pattern is found in the string, =~ returns its starting position,
# otherwise it returns nil. This means you can use regular expressions as the
# condition in if and while statements. For example, the following code
# fragment writes a message if a string contains the text 'Perl' and 'Python'.

line = 'Perl, Python, Ruby'
if line =~ /Perl|Python/
  puts "Scripting language mentioned: #{line}"
end

# The part of a string matched by a regular expression can also be replaced
# with different text using one of Ruby's substitution methods.

puts line.sub(/Perl/, 'Ruby')      # replace first 'Perl' with 'Ruby'
puts line.gsub(/Python/, 'Ruby')   # replace every 'Python' with 'Ruby'

# Regular expressions are objects of type Regexp. They can be created by
# calling the constructor explicitly or by using the literal forms /pattern/
# and %r\pattern\.

a = Regexp.new('^\s*[a-z]')      # /^\s*[a-z]/
b = /^\s*[a-z]/                  # /^\s*[a-z]/
c = %r{^\s*[a-z]}                # /^\s*[a-z]/

# Once you have a regular expression object, you can match it against a string
# using Regexp#match(aString) or the match operators =~ (positive match) and
# !~ (negative match). The match operators are defined for both String and
# Regexp objects. If both operands of the match operator are strings, the one
# on the right will be converted to a regular expression.

# The match operators return the character position at which the match
# occurred. They also have the side effect of setting a whole load of Ruby
# variables. ($&) receives the part of the string that was matched by the
# pattern, ($`) receives the string that preceded the match, and ($') receives the
# string after the match.

def showRE(a, re)
  if a =~ re
    "#{$`}<<#{$&}>>#{$'}"
  else
    'no match'
  end
end

puts showRE('very interesting', /t/)
puts showRE('Fats Waller', /ll/)

# The match also sets the thread-global variables $~ and $1 through $9.
# The variable $~ is a MatchData object that holds everything you might want
# to know about the match. $1 and so on hold the values of parts of the match.
