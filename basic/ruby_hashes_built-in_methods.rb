#!/usr/bin/ruby

# hash.[key]
# hash.[key] = [value]
# hash.clear
# hash.default
# hash.default = obj
# hash.delete(key)
# hash.delete(key) { |key| block }
# hash.delete_if{ |key, value| block }
# hash.each { |key, value| block }
# hash.each_key { |key| block}
# hash.each_key { |key_value_array| block }
# hash.each_key { |value| block }
# hash.empty?
# hash.fetch(key[, default])
# hash.fetch(key) { |key| block }

# hash.has_key?(key)
# hash.include?(key)
# hash.key?(key)
# hash.member?(key)

# hash.hash_value?(value)
# hash.value?(value)

# hash.keys
# hash.values
# hash.length
# hash.size

# hash.sort
# hash.shift

# hash.merge(other_hash)
# hash.merge(other_hash) { |key, oldval, newval| block}
# hash.merge!(other_hash) { |key, oldval, newval| block}
# hash.update(other_hash)
# hash.update(other_hahs) { |key, oldval, newval| block }

hash1 = {}
1.upto(20) {|i| hash1["key#{i}"] = "value#{i}"}

puts "hash.keys: #{hash1.keys}"
puts "hash.values: #{hash1.values}"

hash1.each { |key, value| puts "#{key} - #{value}"}
