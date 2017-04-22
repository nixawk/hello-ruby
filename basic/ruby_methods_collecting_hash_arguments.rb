
## Collecting Hash Arguments

class ClassOne
  def hello(name, params)
  end
end

classone.hello(
  "jack",
  {
  	'k1' => 'v1',
  	'k2' => 'v2'
  }
)

# The first parameter is the search name, and the second is a hash literal
# containing search parameters. However, this approach is slightly clunky,
# and that set of braces could easily be mistaken for a block associated with
# the method.
# You can place key => value pairs in an argument list, as long as they follow
# any normal arguments and precede any array and block arguments. All these pairs
# will be collected into a single hash and passed as one argument to the method.

classone.hello(
  'jack',
  'k1' => 'v1',
  'k2' => 'v2'
)