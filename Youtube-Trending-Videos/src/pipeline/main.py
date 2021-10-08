import os

from create_schema_tables import create_schema_table

def create_tables():
    schema_dir = os.listdir('../../schema') # list of directories in schema dir

    for schema in schema_dir:
        if schema == 'raw':
            create_flag = False
            
        for sql_file in os.listdir('../../schema/' + schema):
            create_schema_table(
                database = 'youtubeTrend',
                table = sql_file.replace('create_' and '.sql', ''), 
                sql_create = '../../schema/' + schema + '/' + sql_file,
                create_flag = create_flag 
            )
            create_schema_table()

def main():
    create_tables()
    
main()
