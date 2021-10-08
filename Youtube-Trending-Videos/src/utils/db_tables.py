# making a function create_table takes param: connection object, cursor object and sql statement 
def create_table(conn, cursor, sql_create):
    with open(sql_create) as create_file:
        create_query = "".join(create_file.readlines())
        cursor.execute(create_query)
        conn.commit()

# deleting the records of a table takes param: connection objet, cursor object and table name 
def delete_table_records(conn, cursor, table_name):
    delete_query = 'TRUNCATE TABLE {}'.format(table_name)
    cursor.execute(delete_query)
    conn.commit()   
