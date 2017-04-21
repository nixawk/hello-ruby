#!/usr/bin/ruby

# Ranges as Conditions

# Ranges may also be used as conditional expressions.

# As well as representing sequences, ranges may also be used as conditional
# expressions. For example, the following code fragment prints sets of lines
# from standard input, where the first line in each set contains the word "start"
# and the last line the word "end".

score = 70

result = case score
         when 0..40 then "Fail"
         when 41..60 then "Pass"
         when 61..70 then "Pass with Merit"
         when 71..100 then "Pass with Distinction"
         else "Invalid Score"
         end

puts result
