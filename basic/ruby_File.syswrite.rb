
## syswrite

# You can use the method syswrite to write the contents into a file.
# You need to open the file in write mode when using the method syswrite.

aFile = File.new('/tmp/test', 'w+')
if aFile
  aFile.syswrite("hello Ruby")
else
  puts "Unable to open file!"
end