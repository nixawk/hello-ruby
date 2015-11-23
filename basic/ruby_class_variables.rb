#!/usr/bin/ruby

# Class variables begin with @@
# and must be initialized before they can be used in method definitions.

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
