
require 'net/ssh'

# The other approach involves attaching a block to the start method. When used
# this way, the new session is passed to the block, and the session is
# automatically closed when the block exists


Net::SSH.start('192.168.1.100',
               :username => 'admin',
               :password => "",
               :port => 22,
               :auth_methods=>["none", "publickey", "password", "keyboard-interactive"],
               :verbose => :debug,
               :timeout => 30) do |session|
end

