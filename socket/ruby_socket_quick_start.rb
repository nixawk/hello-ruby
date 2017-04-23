
## What's socket ?

# Sockets are endpoints of a bidirectionnal communication channel.
# Sockets can comminucate within a process, between processes on
# the same machine or between different machines.

# There are many types of socket:
# TCPSocket
# UDPSocket
# UNIXSocket

## domain
# The family of protocols Socket::PF_INET, Socket::PF_INET6, Socket::PF_UNIX, etc.

## type
# The type of communications between the two endpoints, typically Socket::SOCK_STREAM or Socket::SOCK_DGRAM.

## protocol
# Typically zero. This may be used to identify a variant of a protocol.

## hostname
# The identifier of a network interface.
# - a string (hostname, IPv4, IPv6)
# - a zero-length string with specifies INADDR_ANY
# - an integer

require 'socket'

# Create a TCP socket in a C-like manner
s = Socket.new Socket::PF_INET, Socket::SOCK_STREAM
s.connect Socket.pack_sockaddr_in(80, 'example.com')

# Using TCPSocket
s = TCPSocket.new('example.com', 80)