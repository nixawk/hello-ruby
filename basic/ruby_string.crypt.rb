
## crypt(salt_str) -> new_str

# Applies a one-way cryptographic hash to str by invoking the standard library function
# crypt(3) with the given salt string. While the format and the result are system and implementation
# dependent, using a salt matching the regular expression  \A[a-zA-Z0-9./]{2} should be valid and safe
# on any platform, in which only the first two characters are significant.

# This method is for use in system specific scripts, so if you want a cross-platform hash
# function consider using Digest or OpenSSL instead.

salt_str = "saltkey"

puts "admin".crypt(salt_str)  # sa1aY64JOY94w