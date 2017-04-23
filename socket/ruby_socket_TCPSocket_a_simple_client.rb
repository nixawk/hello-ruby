require 'socket'

client = TCPSocket.new 'localhost', 4444

while line = client.gets   # Read lines from socket
  puts line                # and print them
end

client.close               # close socket when done