# Assignment-Project-Rest-API-Golang
Assignment Project Rest API Golang

Create Student

URL: http://localhost:8080/student

Method: POST

Body raw json: {"name":"Fitri","age":20,"scores":[{"assignment_title":"Assignment Project 1","description":"Create simple API without middleware","score":95}]}


Get All Students

URL: http://localhost:8080/students

Method: GET


Update Student

URL: http://localhost:8080/student/:id

Method: PUT

Body raw json: {"name":"Fitri","age":22,"scores":[{"assignment_title":"Assignment Project 1 Edit","description":"Create simple API without auth","score":97}]}


Delete Student

URL: http://localhost:8080/student/:id

Method: DELETE
