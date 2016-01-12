
# Ruby has pretty primitive built-in looping constructs,

3.times do |x|
  puts "number is #{x}"
end

0.upto(9) do |x|
  puts "number is #{x}"
end

0.step(9, 2) do |x|
  puts "number is #{x}"
end

(0..9).each do |x|
  puts "number is #{x}"
end

for x in (0..9)
  puts "number is #{x}"
end
