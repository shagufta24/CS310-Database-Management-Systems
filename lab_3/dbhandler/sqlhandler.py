import mysql.connector
from operator import itemgetter


class Mysqlhandler:

    def __init__(self):
        cnx = mysql.connector.connect(user='root', password='chickenparmesan24',
                                      host='127.0.0.1',
                                      database='university_profile')

        cursor = cnx.cursor(buffered=True)
        self.cursor = cursor
        self.cnx = cnx

    def sanitize_input(self, input_obj):
        try:
            name, rollno, dob, yjoin, gender, team, math, sci, eng, social, sports = itemgetter(
                'name', 'rollno', 'dob', 'yjoin', 'gender', 'team', 'math', 'sci', 'eng', 'social', 'sports')(input_obj)
        except:
            return {"error": "Invalid fields in input"}
        return name, rollno, dob, yjoin, gender, team, math, sci, eng, social, sports

    def add_user(self, user_obj):
        add_student = ("INSERT INTO student "
                       "(name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports) "
                       "VALUES (%s, %s, %s, %s, %s,%s,%s,%s,%s,%s,%s)")
        try:
            name, rollno, dob, yjoin, gender, team, math, sci, eng, social, sports = self.sanitize_input(
                user_obj)
        except:
            return self.sanitize_input(user_obj)

        data_student = (name, rollno, dob, yjoin, gender,
                        team, math, sci, eng, social, sports)
        self.cursor.execute(add_student, data_student)
        self.cnx.commit()
        return {"msg": "success"}

    def delete_user(self, rollno):
        delete_student=("DELETE FROM student WHERE rollno = %s")
        self.cursor.execute(delete_student,(rollno,))
        self.cnx.commit()
        return {'msg':'success'}


    def update_user(self, student_obj, rollno):
        keys=student_obj.keys()
        accumulator = [x+" = %s" for x in keys]
        accumulator=', '.join(accumulator)
        update_user=("UPDATE student SET " + accumulator + " WHERE rollno = %s")
        print(accumulator)
        temp = list(student_obj.values())
        temp.append(rollno)
        update_data=tuple(temp)
        self.cursor.execute(update_user,update_data)
        self.cnx.commit()
        return {'msg':'success'}


    def display_users(self):
        query = (
            "SELECT name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports FROM student")
        self.cursor.execute(query)

        temp=['name', 'rollno', 'dob', 'yjoin', 'gender', 'team', 'math', 'sci', 'eng', 'social', 'sports']
        l = [{x:y for x,y in zip(temp,[t for t in p])} for p in self.cursor]
        return l

    def clean_up(self):
        self.cursor.close()
        self.cnx.close()
