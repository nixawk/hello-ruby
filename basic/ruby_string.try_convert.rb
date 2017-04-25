
## try_convert(obj) -> string or nil

# Try to convert obj into a String, using #to_str method.
# Returns converted string or nil if obj cannot be converted for any reason.

puts String.try_convert("hello Ruby")
puts String.try_convert(/re/)       # return nil

arrayobj = [0, 1, 2]
puts String.try_convert(arrayobj)   # return nil
puts arrayobj.to_s