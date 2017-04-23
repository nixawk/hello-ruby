
## File.open

# You can use File.open method to create a new file object and assign that file object
# to a file. However, there is one difference in between [File.open] and [File.new] methods.
# The dufference is that the File.open method can be associated with a block, whereas you
# cannot do the same using the File.new method.

File.open("/tmp/test", "w") do |f|
    f.write("Hello Ruby")
end