import pymysql
import sqlalchemy

# Database connection settings
DB_USER = "root"
DB_PASSWORD = "your_password"
DB_HOST = "127.0.0.1"   # or Cloud SQL IP
DB_NAME = "supply_chain"

try:
    engine = sqlalchemy.create_engine(
        f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}/{DB_NAME}"
    )
    connection = engine.connect()
    print("✅ Successfully connected to MySQL Database!")
except Exception as e:
    print("❌ Error:", e)
