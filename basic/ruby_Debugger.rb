
# Ruby comes with a debugger, which is conveniently built into the base
# system. You can run the debugger by invoking the interpreter with the -r
# debug option, along with any Ruby options and the name of your script:
#
#  ruby -r debug [
#                options
#                ] [
#                programfile
#                ] [
#                arguments
#                ]

# The debugger supports the usual range of features you'd expect, including
# the ability to set breakpoints, to step into and step over method calls, and
# to display stack frames and variables.

# It can also list the instance methods defined for a particular object or
# class, and allows you to list and control separate threads with Ruby.

# If your Ruby has readline support enabled, you can use cursor keys to move
# back and forth in command history and use line editing commands to amend
# previous input.


require 'Net/http'


puts "OK"

=begin


ruby_Debugger.rb:26:require 'Net/http'
(rdb:1) help
Debugger help v.-0.002b
Commands
  b[reak] [file:|class:]<line|method>
  b[reak] [class.]<line|method>
                             set breakpoint to some position
  wat[ch] <expression>       set watchpoint to some expression
  cat[ch] (<exception>|off)  set catchpoint to an exception
  b[reak]                    list breakpoints
  cat[ch]                    show catchpoint
  del[ete][ nnn]             delete some or all breakpoints
  disp[lay] <expression>     add expression into display expression list
  undisp[lay][ nnn]          delete one particular or all display expressions
  c[ont]                     run until program ends or hit breakpoint
  s[tep][ nnn]               step (into methods) one line or till line nnn
  n[ext][ nnn]               go over one line or till line nnn
  w[here]                    display frames
  f[rame]                    alias for where
  l[ist][ (-|nn-mm)]         list program, - lists backwards
                             nn-mm lists given lines
  up[ nn]                    move to higher frame
  down[ nn]                  move to lower frame
  fin[ish]                   return to outer frame
  tr[ace] (on|off)           set trace mode of current thread
  tr[ace] (on|off) all       set trace mode of all threads
  q[uit]                     exit from debugger
  v[ar] g[lobal]             show global variables
  v[ar] l[ocal]              show local variables
  v[ar] i[nstance] <object>  show instance variables of object
  v[ar] c[onst] <object>     show constants of object
  m[ethod] i[nstance] <obj>  show methods of object
  m[ethod] <class|module>    show instance methods of class or module
  th[read] l[ist]            list all threads
  th[read] c[ur[rent]]       show current thread
  th[read] [sw[itch]] <nnn>  switch thread context to nnn
  th[read] stop <nnn>        stop thread nnn
  th[read] resume <nnn>      resume thread nnn
  pp expression              evaluate expression and pretty_print its value
  p expression               evaluate expression and print its value
  r[estart]                  restart program
  h[elp]                     print this help
  <everything else>          evaluate
(rdb:1) list
[21, 30] in ruby_Debugger.rb
   21  # If your Ruby has readline support enabled, you can use cursor keys to move
   22  # back and forth in command history and use line editing commands to amend
   23  # previous input.
   24  
   25  
=> 26  require 'Net/http'
   27  
   28  
   29  puts "OK"
(rdb:1) b 29
Set breakpoint 1 at ruby_Debugger.rb:29
(rdb:1) c
Breakpoint 1, toplevel at ruby_Debugger.rb:29
ruby_Debugger.rb:29:puts "OK"


=end
