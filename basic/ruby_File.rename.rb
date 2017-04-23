
## Renaming

File.rename("/tmp/test", "/tmp/testfile")
File.delete("/tmp/testfile")

# If you want to learn more methods about File object, 

File.methods.each do |method|
  puts method
end