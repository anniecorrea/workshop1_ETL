# db_connection.py
import mysql.connector

def get_connection():
    cnx = mysql.connector.connect(
        host="localhost",
        user="root", #Change this to your username
        password="annie",  #Change this to your password
        database="workshop1" 
    )
    return cnx
