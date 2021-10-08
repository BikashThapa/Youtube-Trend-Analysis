import sys
path = 'C:\\Users\\bikas\\Downloads\\Data_Enginner-Internship\\Project_major\\Youtube-Trending-Videos\\'
sys.path.append(path)
from src.utils.createConnection import *
from src.utils.db_tables import *


# defining create_chema_table for creating database table which takes params: database is database name , 
def create_schema_table(database, table, sql_create):
    try:
        conn, cursor = connect(database)
        create_table(conn, cursor, sql_create)                
        close_connection(conn, cursor)
    except Exception as e:
        print("An error has occured.", e)
    else:
       print("{} table successfully created in {} database.".format(table, database))


    
