
# While the exception mechanism of raise and rescue is great for abandoning
# execution when things go wrong, it's sometimes nice to be able to jump out
# of some deeply nested construct during normal processing. This is where
# catch and throw come in handy.

# catch defines a block that is labeled with the given name (which may be a
# Symbol or a String). The block is executed normally util a throw is
# encountered.

# When Ruby encounters a throw, it zips back up the call stack looking for a
# catch block with a matching symbol. When it finds it, Ruby unwinds the stack
# to that point and terminates the block. If the throw is called with the
# optional second prameter, that value is returned as the value of the catch.
# So, in the previous example, if the input does not contain correctly
# formatted lines, the throw will skip to the end of the corresponding catch,


def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == '!'
  return res
end

catch :quitRequested do
  name = promptAndGet("Name: ")
  age = promptAndGet("Age: ")
  sex = promptAndGet("Sex: ")
end

