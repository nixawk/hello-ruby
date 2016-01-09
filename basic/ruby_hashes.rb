
# http://ruby-doc.com/docs/ProgrammingRuby/

# Ruby hashes are similar to arrays. A Hash literal uses braces rather than
# square brackets. The literal must supply two objects for every entry: one
# for the key, the other for the value.

instSection = {
  'cello'      => 'string',
  'clarinet'   => 'woodind',
  'drum'       => 'percussion',
  'oboe'       => 'woodwind',
  'trumpet'    => 'brass',
  'violin'     => 'string'
}

# As the last example shows, a hash by default returns nil when indexed by a
# key it doesn't contain. Normally this is convenient, as nil means false when
# used in conditional expressions. Sometimes you'll want to change this
# default. For example, if you're using a hash to count the number of times
# each key occurs, it's convenient to have the default value by zero. This is
# easily done by specifying a default value when you create a new, empty hash.

histogram = Hash.new(0)
histogram['key1']
histogram['key1'] = histogram['key1'] + 1
histogram['key1']
histogram['key2']  # nil
