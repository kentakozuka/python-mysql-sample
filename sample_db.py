import mysql.connector

def main():
    # connect
    connect = mysql.connector.connect( \
                            host='mysql' \
                        ,   port='3306' \
                        ,   user='test' \
                        ,   password='test' \
                        ,   database='test' \
                        ,   charset='utf8')
    cursor = connect.cursor()

    name = 'Jack'
    sex = 'male'

    # insert
    cursor.execute('insert into user (name, sex) values (%s, %s)', (name, sex))

    # select
    cursor.execute('select * from user')
    row = cursor.fetchone()

    for i in row:
        print(i)

    # disconnect
    cursor.close()
    connect.close()

if __name__ == '__main__': main()
