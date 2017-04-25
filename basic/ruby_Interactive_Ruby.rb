
## Interactive Ruby

# If you want to play with Ruby, there is a facility called Interactive Ruby--irb,
# for short. irb is essentially a Ruby "shell" similar in concept to an operating
# system shell (complete with job control). It provides an environment where you
# can "play around" with the language in read line. You launch irb at the command
# prompt:


# irb also allows you to create subsessions, each one of which may have its own
# context. For example, you can create a subsession with the same (top-level)
# context as the original session, or create a subsession in the context of a
# particular class or instance.


# ->> irb
# 2.4.1 :001 > puts "Hello Ruby"
# Hello Ruby
#  => nil
# 2.4.1 :002 > quit

# As with the debugger, if your version of Ruby was built GNU Readline support,
# you can use arrow keys (as with Emacs) or vi-style key bindings to edit
# individual lines or to go back and reexecute or edit a previous line -- 
# just like a command shell.