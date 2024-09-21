UDP Client in Python
====================

A simple UDP client in Python.

.. code:: Python

  import socket

  SOCKET_FAMILY = socket.AF_INET # AF_INET -> IPV4
  TARGET_HOST = '127.0.0.1' # Where is the server
  TARGET_PORT = 6969 # PORT!

  with socket.socket(SOCKET_FAMILY, socket.DGRAM) as s: # While the UDP Socket is open do this
      #  UDP Does not require a connection
      s.sendto(b'Hello World!', (TARGET_HOST, TARGET_PORT)) # Send data

      data = s.recv(4096) # Listen for response 4KB

      print(repr(data)) # Print out the response
