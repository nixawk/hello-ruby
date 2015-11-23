#!/usr/bin/ruby

# Instance variables begin with @. and its scope is confined to whatever
# object self refers to. Two different objects, even if they belong to the
# same class, are allowed to have different values for their instance
# variables. From outside the object cannot be altered or even observed (i.e.,
# ruby's instance variables are never public) except by whatever methods are
# explicitly provided by the programmer. As with globals, instance variables
# have the nil value until they are initialized.

# Uninitialized instance variables have the value nil and produce warnings
# with the -w option.

class Customer
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
end

# Create Objects
cust1 = Customer.new("1", "Gim Green", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul Dee", "New Empire road, Khandala")

# Call Methods
cust1.display_details
cust2.display_details
