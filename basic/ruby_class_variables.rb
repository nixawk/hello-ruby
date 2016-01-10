#!/usr/bin/ruby

# Class variables begin with @@
# and must be initialized before they can be used in method definitions.

# A Class variable is shared among all objects of a class, and it is also
# accessible to the class methods that we'll describe later. There is only one
# copy of a particular class variable for a given class.

# Class variable names start with two ``at'' signs, such as ``@@count''.
# Unlike global and instance variables, class variables must be initialized
# before they are used. Often this initialization is just a simple assignment
# in the body of the class definition.

class Customer
  @@number = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  def display_details
    puts "Customer id: #@cust_id"
    puts "Customer name: #@cust_name"
    puts "Customer addr: #@cust_addr"
  end

  def total_number
    @@number += 1
    puts "Total number: #@@number"
  end
end

# Create Objects
cust1 = Customer.new("1", "Gim Green", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul Dee", "New Empire road, Khandala")

# Call Methods
cust1.display_details
cust2.display_details

cust1.total_number
cust2.total_number

# Class variables are private to a class and its instance. If you want to make
# them accessible to the outside world, you'll need to write an accessor
# method. This method could be either an instance method or, leading us neatly
# to the next section, a class method.
