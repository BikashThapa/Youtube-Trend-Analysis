import psycopg2 as pg2
from dotenv import load_dotenv
import os

# load dotenv so that we can set below code as environment variables
load_dotenv() 

# create databse connect and take database name as a param
def connect(database):
    try:
        conn = pg2.connect(
            host = os.getenv('HOST'),
            user = os.getenv('USER'),
            password = os.getenv('SERVER_PASSWORD'),
            port = os.getenv('PORT'),
            database = database
        )
        cursor = conn.cursor()
        return conn, cursor
    except Exception as e:
            print("Error Occured as -- ", e)


# closing the database connection  params: connection and cursor object
def close_connection(conn, cursor):
    cursor.close()
    conn.close()

