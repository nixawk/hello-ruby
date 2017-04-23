# tcp_server_loop(host=nil,port)

# creates a TCP/IP server on port and calls the block for each connection accepted. The
# block is  called with a socket and a client_address as an Addrinfo object.

# If host is specified, it is used with port to determine the server addresses.

# The socket is not closed when the block returns. So application should close it explicitly.

# This method calls the block sequentially. It means that the next connections is not accepted util
# the block returns. So concurrent mechanism, thread for example, should be used to service multiple
# clients as a time.

require 'socket'


# Sequential echo server
# It services only one client at a time
Socket.tcp_server_loop(20000) do |sock, client_addrinfo|
  begin
  	IO.copy_stream(sock, sock)
  ensure
  	sock.close
  end
end


# Threaded echo server
# It services multiple clients at a time.
# Note that it may accept connections too much

Socket.tcp_server_loop(30000) do |sock, client_addrinfo|
  Thread.new do
  	begin
  	  IO.copy_stream(sock, sock)
  	ensure
  	  sock.close
  	end
  end
end 