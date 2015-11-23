#!/usr/bin/ruby

# Global variables begin with $.
# Uninitialized global variables have the value nil and produce warnings with
# the -w option

$global_variable = 10

def foo
  puts "global variable: #$global_variable"
  puts "global variable: #{$global_variable}"
end

foo

=begin

Global variables should be used sparingly. They are dangerous because they can
be written to from anywhere. Overuse of globals can make isolating bugs difficult;

There is a collection of special variables whose names consist of a dollar sign ($)
followed by a single character. For example, $$ contains the process id of the ruby
interpreter, and is read-only. Here are the major variables

    $!  -  latest error message
    $@  -  location of error
    $_  -  string last read by gets
    $.  -  line number last read by interpreter
    $&  -  string last matched by regexp
    $~  -  the lastest regexp match, as an array of subexpressions
    $n  -  the nth subexpression in the lastest match (same as $~[n])
    $=  -  case-insensitivity flag
    $/  -  input record separator
    $\  -  output record separator
    $0  -  the name of the ruby script file
    $*  -  the command line arguments
    $$  -  interpreter's process ID
    $?  -  exit status of last executed child process

=end

puts "Current File Name: #{$0}"
puts "Process id: #{$$}"
