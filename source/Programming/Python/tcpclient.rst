TCP Client in Python
====================

A simple TCP client in Python.

.. code:: Python

  import socket

  SOCKET_FAMILY = socket.AF_INET # AF_INET -> IPV4
  TARGET_HOST = '127.0.0.1' # Where is the server
  TARGET_PORT = 6969 # PORT!

  with socket.socket(SOCKET_FAMILY, socket.SOCK_STREAM) as s: # While the TCP Socket is open do this
      #  TCP Requires a connection
      s.connect((TARGET_HOST, TARGET_PORT)) # Connect to server

      s.send(b'Hello World!') # Send data

      data = s.recv(4096) # Listen for response 4KB

      print(repr(data)) # Print out the response
