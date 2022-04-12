import socket, sqlite3

connection = sqlite3.connect(database = \
    '/home/sirius/Study/Learning-Python/19/address')
cursor = connection.cursor()

cursor.execute('''SELECT * FROM addresses_db''')
table = cursor.fetchall()

if not table:
    print('Table is empty')
else:
    for host_port in table:
        HOST, PORT = host_port[0], host_port[1]
        connection = socket.socket()
        try:
            connection.settimeout(5)
            connection.connect((HOST, PORT))
        except:
            print(f'Server {HOST} unreachable')
        else:
            print(f'Kaif. Connected to {HOST}')
        finally:
            connection.close()