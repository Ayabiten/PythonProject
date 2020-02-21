import sqlite3 as sql
base =sql.connect("Etudient.db")
cur = base.cursor()







base.commit()
cur.close()
base.close()
