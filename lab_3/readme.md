# Endpoints request body format:

## /user/register [POST] : add user to the db

### Request body:

```
{
  "dob": "1800-07-25",
  "eng": 100,
  "gender": "M",
  "math": 95,
  "name": "sam",
  "rollno": 537,
  "sci": 99,
  "social": 97,
  "sports": 200,
  "team": "P",
  "yjoin": 2001
}
```

## /user/update [POST] : update the user data in the db

### Request body:

student_obj contains the fields that need to be updated.

```
{
  "student_obj":{
      "name": "hello",
      "team": "W"
  },
  "rollno" : 537
}
```

## /user/delete [POST] : delete the user data from the db

### Request body:

Contains only the rollno for the record to be deleted.

```
{
  "rollno" : 537
}
```

## /user/view [GET] : view all the users in the db
