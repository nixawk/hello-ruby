#!/usr/bin/ruby

# Ranges may also be used as conditional expressions.

score = 70

result = case score
         when 0..40 then "Fail"
         when 41..60 then "Pass"
         when 61..70 then "Pass with Merit"
         when 71..100 then "Pass with Distinction"
         else "Invalid Score"
         end

puts result
