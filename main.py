import pymysql

def connect():
    connection = pymysql.connect(
        host="localhost",
        user="root",
        password="password",
        database="supply_chain"
    )
    print("✅ Connected to MySQL")
    return connection

if __name__ == "__main__":
    conn = connect()
    conn.close()
