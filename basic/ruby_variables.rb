
# Ruby uses a convention to help it distinguish the usage of a name:
# the first characters of a name indicate how the name is used.
# - Local variables, method parameters, and method names should all start with
#   a lowercase letter or with an underscore.
# - Global variables are prefixed with a dollar sign ($), while instance
#   variables begin with an ``at''(@).
# - Class variables start with two ``at'' signs (@@).
#

# Variables are used to keep track of objects; each variable holds a reference
# to an object.

person = 'Tim'
puts "id: #{person.__id__}"
puts "class: #{person.class}"
puts persion

# Is a variable an object ?
# In Ruby, the answer is ``no''. A variable is simply a reference to an object.

person1 = person
person[0] = 'J'
puts person
puts person1

# What happened here ? We changed the first character of person1, but both
# person1 and person2 changed from ``Tim'' to ``Jim''
# It all comes back to that variables hold references to objects, not the
# objects themselves.
