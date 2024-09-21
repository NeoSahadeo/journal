TCP Server in Python
====================

A simple TCP server in Python.

.. code:: Python

  import socket
  import threading

  IP = '127.0.0.1' # IP of the server
  PORT = 6969 # Port of the server


  def handle_client(client): # Handle client connections
      with client as s:
          data = s.recv(4096)
          print(repr(data))
          s.send(b'ACK') # 'ACK' stands for Acknowledgement


  def main():
      with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s: # Do this while Socket it open
          s.bind((IP, PORT)) # Link the IP and PORT to the Socket
          s.listen(5) # Listen with a max of 5 connections allowed

          print(f'Listening on {IP}:{PORT}')

          while True:
              client, address = s.accept() # Accept any connection requests
              print(f'Connected {address[0]}:{address[1]}')
              client_handler = threading.Thread(target=handle_client, args=(client,)) # Add client to thread
              client_handler.start() # Start the thread


  if __name__ == '__main__':
      main()
