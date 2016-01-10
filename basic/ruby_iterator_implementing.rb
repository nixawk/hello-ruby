
# Within the method, the block may be invoked, almost as if it were a method
# itself, using the (yield) statement. Whenever a yield is executed, it
# invokes the code in the block. When the block exits, control picks back up
# immediately after the yield.

def threeTimes
  yield
  yield
  yield
end

threeTimes { puts "Hello World" }

# You can pass arameters to them and receive values back from them.

def fibUpTo(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1 + i2
  end
end

fibUpTo(1000) { |f| print f, ' ' }
