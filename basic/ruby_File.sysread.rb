
## sysread

# You can use the method sysread to read the conntents of a file.
# You can open the file in any of the modes when using the method sysread.

aFile = File.new('/tmp/test', 'r')
if aFile
  content = aFile.sysread(20)
  puts content
else
  puts "Unable to open file!"
end

# The statement will output the first 20 characters of the file. The file pointer
# will now be placed at the 21st character in the file.