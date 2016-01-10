
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


