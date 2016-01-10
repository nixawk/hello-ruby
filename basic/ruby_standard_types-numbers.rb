
# Ruby supports integers and floating point numbers. Integers can be any
# length (up to a maximum determined by the amount of free memory on your
# system). Integers within a certain range are held internally in binary form,
# and are objects of class (Fixnum). Integers outside this range are stored in
# objects of class (Bignum) (Currently implemented as a variable length set of
# short integers)

num = 8

7.times do
  print num.class, ' ', num, "\n"
  num *= num
end

# You write integers using an optional leading sign, an optional base
# indicator (0 for octal, 0x for hex, or 0b for binary), followed by a string
# of digits in the appropriate base. Underscore characters are ignored in the
# digit string.
#
#  12345                      # Fixnum
#  123_456                    # Fixnum (underscore ignored)
#  -543                       # Negative Fixnum
#  123_456_789_123_456_789    # BigNum
#  0xaabb                     # Hexadecimal
#  0377                       # Octal
#  -0b101_010                 # Binary (negated)
#
#
#
#  ?a                         # character code
#  ?\n                        # code for a newline (0x0a)
#  ?\C-a                      # control a = ?A & 0x9f = 0x01
#  ?\M-a                      # meta sets bit 7
#  ?\M-\C-a                   # meta and control a
#  ?\C-?                      # delete character

3.times        { print "X " }
1.upto(5)      { |i| print i, " " }
99.downto(95)  { |i| print i, " " }
50.step(80, 5) { |i| print i, " " }
