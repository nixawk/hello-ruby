#!/usr/bin/ruby

# We need to have an instance of String object to call a String method.
# Following is the way to create ab instance of String object:

myStr = String.new("This is a string")


# str % arg
# Formats a string using a format specification. arg must be an array if it
# contains more than one substitution. For information on the format
# specification. see springf under "Kernel Module".

puts "#{myStr.downcase}"


# str * integer
# Returns a new string containing integer times str. In other words, str is
# repeated integer imes.

puts myStr * 2


# str + other_str
# Concatenates other_str to str

puts myStr + myStr


# str << obj
# Concatenates an object to str. If the object is a Fixnum in the range 0.255,
# it is converted to a character. Compare it with concat.

myStr << "\n"
myStr << "Hello World !"
puts myStr


# str <=> other_str
# Compares str with other_str, returning -1 (less than), 0 (equal), 1 (greater
# than). The comparison is casesensitive.

# str =~ obj

# str.capitalize
# str.capitalize!

myStr2 = "hoooo !"
puts myStr2.capitalize
myStr2.capitalize!
puts myStr2

# str.casecmp
puts myStr2.casecmp(myStr)
puts myStr2.casecmp(myStr2)

# str.center
puts myStr2.center(16)

# str.chomp
# Removes the record separator ($/), usually \n, from the end of a string. If
# no record separator exists, does nothing

# str.chomp!
# Same as chomp, but changes are made in place

# str.chop
# str.chop!
# Removes the last character in str
myStr2.chop!
myStr2.chop!
myStr2.chop!
puts myStr2

# str.concat(other_str)
# Concatenates other_str to str

# str.count(str)
# Counts one or more sets of characters
puts myStr2.count('ho')

# str.crypt(other_str)
# Applies a one-way cryptographic hash to str.
salt = '1234'
puts myStr2.crypt(salt)

# str.delete(other_str,...)
# str.delete!(other_str,...)
# Returns a copy of str with all characters in the intersection of its
# arguments delete.

puts myStr2.delete('o')

# str.downcase
# str.downcase!
# Returns a copy of str with str with all uppercase letters replaced with
# lowercase.

puts myStr2.downcase

# str.upcase
# str.upcase!


# str.dump
# Returns a version of str with all nonprinting characters replaced by \nnn
# notation and all special characters escaped.

puts myStr2.dump

# str.each_char { |substr| block }
myStr2.each_char { |c| puts c }

# str.each_byte { |substr| block }
myStr2.each_byte { |c| puts c }

# str.each_line(separator=$/) { |substr| block }


# str.empty?
# Return true if str is empty (has a zero length)

# str.sql?(other)
# Two strings are equal if the have same length and content.

# str.gsub(pattern, replacement) [or]
# str.gsub(pattern) { |match| block }

# str[fixnum]           # one Fixnum, returns a character code at fixnum
# str[fixnum, fixnum]   # returns a substring at offset (first fixnum) to length (second fixnum)
# str[range]            # returns a substring in the range
# str[regexp]           # returns portion of matched string
# str[regexp,fixnum]    # returns matched data at fixnum
# str[other_str]        # returns substring matching other_str

# str.slice(fixnum)
# str.slice!(fixnum)
# str.slice(fixnum, fixnum)
# str.slice!(fixnum, fixnum)
# str.slice(range)
# str.slice!(range)
# str.slice(regexp)
# str.slice!(regexp)
# str.slice(regexp, fixnum)
# str.slice!(regexp, fixnum)
# str.slice(other_str)
# str.slice!(other_str)


# str.hash
# Returns a hash based on the string's length and content
puts myStr2.hash

# str.hex
# Treats leading characters from str as a string of hex digits (with an
# optional sign and an optional 0x) and returns the corresponding number. Zero
# is returned on error.
puts myStr2.hex

# str.include?
# Returns true if str contains the given string or character
puts myStr2.include?('o')

# str.index(substring[, offset])
# str.index(fixnum[,offset])
# str.index(regexp[,offset])

# str.insert(index, other_str)
# str.inspect


# str.intern
# str.to_sym

# str.length

# str.ljust(integer, padstr='')
# str.rjust(integer, padstr='')

# str.lstrip
# str.lstrip!
# str.rstrip
# str.rstrip!
# str.strip
# str.strip!

# str.match(pattern)
# str.scan(pattern) { |match, ...| block }
# Converts pattern to a Regexp (if it isn't already one), then invokes its
# match method on str.

# str.reverse
# str.reverse!

# str.to_f
# str.to_i(base=10)   # base 2, 8, 10, or 16
# str.to_s
# str.to_str

# str.tr(from_str, to_str)
# str.tr!(from_str, to_str)

# str.upto(other_str) { |s| block }

# http://www.tutorialspoint.com/ruby/ruby_strings.htm
