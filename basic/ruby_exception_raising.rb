
# You can raise exceptions in your code with the Kernel::raise method.

class MyException < Exception
end

raise MyException, "This is an exception for test"
