
## each_byte

# This method belongs to the class File. The method each_byte is always
# associated with a block.

aFile = File.new("/tmp/test", "r+")
if aFile
  # aFile.syswrite("ABCDEF")
  aFile.each_byte { |ch| putc ch; putc ?. }
else
  puts "Unable to open file!"
end