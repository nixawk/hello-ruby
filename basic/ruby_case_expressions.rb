
# The Ruby case expression is a powerful beast: a multiway if on steroids.

year = 2015

kind = case year
       when 1850..1889 then 'Blues'
       when 1890..1909 then 'Ragtime'
       when 1910..1929 then 'New Orleans Jazz'
       when 1930..1939 then 'Swing'
       when 1940..1950 then 'Bebop'
       else                 'Jazz'
       end

puts kind

# case operates by comparing the target (the expression after the keyword
# (case) with each of the comparison expressions after the when keywords. This
# test is done using comparison === target. As long as a class defines
# meaningful semantics for === (and all the built-in classes do), objects of
# that class can be used in case expressions.

line = 'title=hello-world'
case line
when /title=(.*)/
  puts "Title is #$1"
when /track=(.*)/
  puts "Track is #$1"
when /artist=(.*)/
  puts "Artist is #$1"
end
