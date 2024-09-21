UDP Server in Python
====================

A simple UDP server in Python.

.. code:: Python

  import socket

  IP = '127.0.0.1' # Server IP
  PORT = 6969 # Server PORT


  def main():
      with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as s: # Create a UDP Socket
          s.bind((IP, PORT)) # Link IP and PORT to Socket

          print(f'Listening on {IP}:{PORT}')

          while True:
              # UDP does not require a maintained connection to server
              data, address = s.recvfrom(4096) # Listen for data
              print(f'Connected {address[0]}:{address[1]}')

              response = "Hello, UDP Client!"
              s.sendto(response.encode(), address) # Send response


  if __name__ == '__main__':
      main()
