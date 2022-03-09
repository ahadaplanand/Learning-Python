import sqlite3

connection = sqlite3.connect(database = 'evevgdgv.sql')
cursor = connection.cursor()

cursor.execute('''CREATE TABLE IF NOT EXISTS table1
	(id INTEGER PRIMARY KEY,
	field1 TEXT,
	field2 TEXT)''')
connection.commit()

cursor.execute('''INSERT INTO table1 (id, field1, field2) VALUES 
    (100, 'Arnold', 'Apples')''')
cursor.execute('''INSERT INTO table1 (id, field1, field2) VALUES 
    (101, 'Jane', 'Oranges')''')

cursor.execute('''SELECT id, field2 FROM table1''')
print(cursor.fetchall())

cursor.close()
connection.close()