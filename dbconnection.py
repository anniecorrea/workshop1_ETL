# db_connection.py
import mysql.connector

def get_connection():
    cnx = mysql.connector.connect(
        host="localhost",
        user="root",
        password="annie",  
        database="workshop1"
    )
    return cnx
