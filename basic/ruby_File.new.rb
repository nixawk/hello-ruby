
# File.new

# You can create a File object using File.new method for reading, writing, or both,
# according to the mode string. Finally, you can use File.close method to close it.

## mode

# r   ----  Read-only mode.
# r+  ----  Read-write mode.
# w   ----  Write-only mode.
# w+  ----  Read-write mode.
# a   ----  Write-only mode.
# a+  ----  Read and write mode.

afile = File.new('/tmp/test', 'a')
afile.write("Ruby")
afile.close()