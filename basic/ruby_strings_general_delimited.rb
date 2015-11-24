#!/usr/bin/ruby

# With general delimited strings, you can create strings inside a pair of
# matching though delimiter characters, e.g., |, (, {, <, etc., preceded by a
# percent character (%). Q, q, and x have special meanings.

puts %{Ruby is fun.}   # eq to "Ruby is fun."
puts %Q{Ruby is fun.}  # eq to "Ruby is fun."
puts %q{Ruby is fun.\n}  # eq to a single-quoted string
puts %x!whoami!          # eq to back tick command output: `whoami`

