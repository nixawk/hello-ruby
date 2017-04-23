
# tcp(host, port, local_host=nil, local_port=nil)

# creates a new socket object connected to host:port using TCP/IP.

# If local_host:local_port is given, the socket is bound to it.
# If a block is given, the block is called with the socket. The value of the block is returned.
# The socket is closed when this method returns.

# If no block is given, the socket is returned.

require 'socket'

Socket.tcp("www.ruby-lang.org", 80) do |sock|
  httpreq = ""
  httpreq << "GET / HTTP/1.0\r\n"
  httpreq << "Host: www.ruby-lang.org\r\n"
  httpreq << "\r\n"
  sock.print httpreq
  sock.close_write
  puts sock.read
end