
require 'net/ssh'

host = '192.168.199.111'
user = 'admin'
pass = ''

session = Net::SSH.start(host,
                         user,
                         :password => pass,
                         :verbose => :debug)
session.close

# session = Net::SSH.start(host, user, pass)
#
# /.rvm/gems/ruby-2.1.7/gems/net-ssh-3.0.2/lib/net/ssh.rb:195:in `start': undefined method `keys' for "":String (NoMethodError)
#

# Once you have required the net/ssh module, you can begin an SSH session by
# calling (Net::SSH.start). This may be used in one of two ways. If called
# without a block, it will return a referneces to the new session as an
# instance of a Net::SSH::Session. Used this way, you must explicitly close
# the session when you are finished with it.
