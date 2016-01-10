
# Ruby has all the usual control structures, such as if statements and while
# loops. Java, C , and Perl prgrammers may well get caught by the lack of
# braces around the bodies of these statement. Instead, Ruby uses the keyword
# end to signify the end of a body.

if radiation > 3000
  puts "Danger, Will Robinson"
end

puts "Danger, Will Robinson" if radiation > 3000


while square < 1000
  square = square * square
end

square = square * square while square < 1000
