
require 'net/ssh'

opts = {
  :port => 22222,
  :keys => ['/Users/Open-Security/.ssh/kali'],
  :passphrase => 'password',
  :verbose => :info
}


Net::SSH.start('192.168.1.102', 'root', opts) do |ssh|
  output = ssh.exec! "id\n"
  puts output
end
