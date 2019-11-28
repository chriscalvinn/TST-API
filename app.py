import pymysql
from flaskext.mysql import MySQL
from flask import Flask, request, jsonify
from flask_restful import Resource, Api
from json import dumps
import mysql.connector
import json
import requests

app = Flask(__name__)
mysql = MySQL(app)
app.config['DEBUG'] = True

app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'dbase'
app.config['JSONIFY_PRETTYPRINT_REGULAR'] = True
mysql.init_app(app)

def checkKey(dict, key):
#mengembalikan true jika key ada di dictionary dan false jika tidak
    if key in dict: 
        return True
    else: 
        return False

@app.route('/book', methods=['GET'])
def index():
    #mengambil dari database
    global cursor, conn
    if request.method == 'GET':
        try:
            conn = mysql.connect()
            cursor = conn.cursor(pymysql.cursors.DictCursor)

            judul=request.args.get('judul')
            if (judul==None):
                cursor.execute("select * from book")
                res = cursor.fetchall()
            else:
                cursor.execute("select * from book where Judul=%s",judul)
                res = cursor.fetchall()
                
        except Exception as e:
            return e
        finally:
            cursor.close()
            conn.close()
    else:
        res = [{
            'status': 201,
            'message': 'Failed',
        }]
        
    return jsonify({'result': res})

@app.route('/admin', methods=['POST','DELETE','PUT'])
def change():
    global cursor, conn
    #mengupload ke database
    if request.method == 'POST':
        try:
            conn = mysql.connect()
            cursor = conn.cursor()

            judul = request.form.get('judul')
            isbn = request.form.get('isbn')
            penulis = request.form.get('penulis')
            penerbit = request.form.get('penerbit')
            tahun_terbit = request.form.get('tahun_terbit')
            harga = request.form.get('Harga')
            berat = request.form.get('Berat')


            query = "INSERT INTO book(Judul, Penulis, Penerbit, ISBN, Tahun_Terbit, Harga, Berat) VALUES(%s,%s,%s,%s,%s,%s,%s)"

            data = (judul, penulis, penerbit, isbn, tahun_terbit, harga, berat)
            cursor.execute(query, data)
            conn.commit()
            res = {
                'message' : 'Success',
                'data': {
                    'Judul' : judul,
                    'ISBN' : isbn,
                    'Penulis' : penulis,
                    'Penerbit' : penerbit,
                    'Tahun_Terbit' : tahun_terbit,
                    'Harga' : harga,
                    'Berat' : berat,
                    }
                }

        except Exception as e:
            return e
        finally:
            cursor.close()
            conn.close()

    #menghapus dari database
    elif request.method == 'DELETE':
        try:
            conn = mysql.connect()
            cursor = conn.cursor()
            data = request.args.get('judul')
            query = """DELETE FROM book WHERE judul=%s"""
            cursor.execute(query, data)
            conn.commit()
            res = [{
            'status': 200,
            'message': "Deleted"
            }]
            return jsonify(res)
        except Exception as e:
            return e
        finally:
            cursor.close()
            conn.close()

    #mengubah entri database
    elif request.method == 'PUT':
        try:
            conn = mysql.connect()
            cursor = conn.cursor()

            judul = request.form.get('judul')
            isbn = request.form.get('isbn')
            penulis = request.form.get('penulis')
            penerbit = request.form.get('penerbit')
            tahun_terbit = request.form.get('tahun_terbit')
            harga = request.form.get('Harga')
            berat = request.form.get('Berat')

            query = "UPDATE book SET ISBN=%s, Penulis=%s, Penerbit=%s, tahun_terbit=%s, Harga=%s, Berat=%s WHERE Judul=%s"
            data = (isbn, penulis, penerbit, tahun_terbit, harga, berat, judul)
            cursor.execute(query,data)
            conn.commit()

            res = {
                'message' : 'Success',
                'data': {
                    'Judul' : judul,
                    'ISBN' : isbn,
                    'Penulis' : penulis,
                    'Penerbit' : penerbit,
                    'tahun_terbit' : tahun_terbit,
                    'Harga' : harga,
                    'Berat' : berat
                    }
                }  
        except Exception as e:
            return e
        finally:
            cursor.close()
            conn.close()
            
    else:
        res = [{
            'status': 201,
            'message': 'Failed',
        }]
        
    return jsonify({'result': res})



@app.errorhandler(404)
def not_found(error=None):
    message = {
        'status': 404,
        'message': 'Not Found: ' + request.url,
    }
    resp = jsonify(message)
    resp.status_code = 404

    return resp


@app.errorhandler(405)
def not_found(error=None):
    message = {
        'status': 405,
        'message': 'Method ' + request.method + ' is not allowed',
    }
    resp = jsonify(message)
    resp.status_code = 405

    return resp

if __name__ == '__main__':
    app.run()
