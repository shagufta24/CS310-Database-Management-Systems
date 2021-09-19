from werkzeug.wrappers import request
from . import app
from flask import jsonify,request

from dbhandler import Mysqlhandler
handler = Mysqlhandler()

@app.route('/')
def runit():
    return {'msg':'hi'}

@app.route('/user/view', methods = ["GET"])
def view():
    user_list=handler.display_users()
    return {'users':user_list}

@app.route('/user/register', methods = ["POST"])
def register():
    user_obj=request.json
    return handler.add_user(user_obj=user_obj)
    

@app.route('/user/update', methods = ["POST"])
def update():
    return handler.update_user(student_obj = request.json['student_obj'], rollno = request.json['rollno'])
    

@app.route('/user/delete', methods = ["POST"])
def delete():
    return handler.delete_user(rollno=request.json['rollno'])


