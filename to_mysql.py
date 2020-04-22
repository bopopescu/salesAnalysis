import mysql.connector
from mysql.connector.errors import Error
import pandas as pd

class Mysql():
    def __init__(self,source,data):
        self.database = 'sales'
        self.data = data
        self.source = source
        super().__init__()
    
    def connect(self):
        self.db = mysql.connector.connect(
            host = '127.0.0.1',
            port = 3306,
            user = 'python',
            passwd = '1111111111',
            database = self.database
            )
        self.cursor = self.db.cursor()    
    
    def write2 (self):
        self.connect()
        # creating column list for insertion
        cols = "`,`".join([str(i) for i in self.data.columns.tolist()])
        # Insert DataFrame recrds one by one.
        for i,row in self.data.iterrows():
            
            sql = "INSERT INTO `tilda` (`" +cols + "`) VALUES (" + "%s,"*(len(row)-1) + "%s)"
            
            try:
                self.cursor.execute(sql, tuple(row))
            except mysql.connector.errors.IntegrityError as err:
                if err.errno == 1062: 
                    self.update(self.data.iloc[i])
                else:
                    print('Something wrong:', err)
            # the connection is not autocommitted by default, so we must commit to save our changes
            self.db.commit()
        pass

    def update(self, key):
        if 1:
            __flag__ = False
            __id__ = int(key['id'])
            read_data = (
                        'SELECT name, phone, email, utm_source, utm_medium FROM sales.tilda WHERE id = %s' 
                        )
            self.cursor.execute(read_data, (__id__,))
            for (name, phone, email, utm_source, utm_medium) in self.cursor:
                (name, phone, email, utm_source, utm_medium)
            if name != key['name'] and key['name'] != 'NaN':
                name = key['name']
                __flag__ = True
            if email != key['email'] and key['email'] != 'NaN':
                email = key['email']
                __flag__ = True
            if utm_source != key['utm_source'] and key['utm_source'] != 'NaN':
                utm_source = key['utm_source']
                __flag__ = True
            if utm_medium != key['utm_medium'] and key['utm_medium'] != 'NaN':
                utm_medium = key['utm_medium']
                __flag__ = True
            if __flag__ == True:
                update_data = ('UPDATE sales.tilda SET name = %s, email = %s, utm_source = %s, utm_medium = %s WHERE id = %s')
                self.cursor.execute(update_data, (name, email, utm_source, utm_medium,__id__))
                print('update')
                self.db.commit()



    def write(self):
        self.connect()
        self.form_data()
        for i in range(len(self.data_load)):
            print(self.data_load)
            self.insert(i)
            
        self.db.commit()
        self.cursor.close()
        self.db.close()
          

    def read(self):
        pass

    if __name__ == '__main__':
        
        pass
        