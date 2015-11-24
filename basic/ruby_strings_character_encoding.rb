#!/usr/bin/ruby

# The default character set for Ruby is ASCII, whose characters may be
# represented by single bytes. If you use UTF-8, or another modem character
# set, characters may be represented in one to four bytes.

# You can change your character set using $KCODE at the beginning of your
# program, like this:

$KCODE = 'u'

# a - ASCII (same as none). This is the default.
# e - EUC
# n - None (same as ASCII)
# u - UTF-8
