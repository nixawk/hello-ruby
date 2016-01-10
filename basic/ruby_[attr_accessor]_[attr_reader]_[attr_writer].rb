
# http://stackoverflow.com/questions/5046831/why-use-rubys-attr-accessor-attr-reader-and-attr-writer

# attr_accessor: var
# attr_reader: var
# attr_writer: var

class Person
  attr_writer :age

  # /* same as follow code*/
  # def age=(value)
  #   @age = value
  # end

  attr_reader :age

  # /* same as follow code*/
  # def age
  #   @age
  # end

  # attr_accessor :age = attr_reader :age + attr_writer :age

end
