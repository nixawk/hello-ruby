
require 'socket'

client = TCPSocket.open('localhost', 4444)
client.send("pwned\n", 0)
puts client.readlines
client.close
