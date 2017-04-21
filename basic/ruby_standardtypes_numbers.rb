
## Numbers

# Ruby supports integers and floating point numbers. Integers can be any length
# (up to a maximum determined by the amount of free memory on your system).

# Integers within a certain range (normally -2^30 to 2^30-1 or -2^62 to 2^62-1)
# are held internally in binary form, and are objects of class Fixnum.

# Integers outside this range are stored in objects of class Bignum.

def print_integer(num)
  puts "#{num.class} - #{num}"
end

num = 8

7.times do
  print_integer(num)
  num *= num
end

# You write integers using an optional leading sign, an optional base indicator
# (0 for octal, 0x for hex, 0b for binary),
# Underscore characters are ignored in the digit string.


print_integer(123456)        # Fixnum
print_integer(123_456)       # Fixnum
print_integer(-543)          # Negative Fixnum
print_integer(0xaabb)        # Hexadecimal
print_integer(0377)          # Octal
print_integer(-0b101_010)    # Binary (negated)

# You can also get the integer value corresponding to an ASCII character or
# escape sequence by preceding it with a question mark. Control and meta
# comninations can also be generated using ?\C-x, ?\M-x, and ?\M-\C-x.

# The control version of a value is the same as "value & 0x9f".
# The meta version of a value is "value | 0x80".

?a                       # character code
?\n                      # code for a newline (0x0a)
?\C-a                    # control a = ?A & 0x9f = 0x01
?\M-a                    # meta sets bit 7
?\M-\C-a                 # meta and control a
?\C-?                    # delete character

# Finally, a warning for Perl users. Strings that contain numbers are not
# automatically converted into numbers when used in expressions.