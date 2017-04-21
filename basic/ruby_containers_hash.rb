
# Hashes (sometimes known as associative arrays or dictionaries) are similar to
# Arrays, in that they are indexed collective of object references.

# However, while you index arrays with integers, you can index a hash with objects
# of any type: strings, regular expressions, and so on.

# When you store a value in a hash, you actually supply two objects --
# the key and the value.

hashone = {
    'dog' => '1',
    'cat' => '2'
}

puts hashone.to_s

# ompared with arrays, hashes have one significant advantage: they can use any objects as an index.
# However, they also have a significant disadvantage: their elements are not ordered, so you cannot
# easily use a hash as a stack or a queue.