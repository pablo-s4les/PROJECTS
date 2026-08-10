import socket
import sys

try:
   sock=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
   sock.connect((sys.argv[1], int(sys.argv[2])))
   banner = sock.recv(1024)
   print(banner.decode("UTF-8"))
except:
   print("Porta {} fechada!".format(sys.argv[2]))
