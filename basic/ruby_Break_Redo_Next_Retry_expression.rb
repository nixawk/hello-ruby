
# The loop control constructs break, redo, and next let you alter the normal
# flow through a loop or iterator.

# (break) terminates the immediately enclosing loop; control resumes at the
# statement following the block.
# (redo) repeats the loop from the start, but without reevaluating the
# condition or fetching the next element (in an iterator).
# (next) skips to the end of the loop, effectively starting the next
# iteration.

i = 1
1.step(9) do |x|
  next if x == 3
  puts "Number is #{x}"

  i += 1 if x == 5
  redo if i < 10 && x == 5
end
