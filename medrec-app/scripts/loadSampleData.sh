#!/bin/bash
###############EMPLOYEES#################
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.idb.medrec.Employee", \ 
   "email": "employee2", \ 
   "firstName": "Employee", \ 
   "lastName": "One" \ 
 }' 'http://localhost:3000/api/Employee'


curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.idb.medrec.Employee", \ 
   "email": "employee2", \ 
   "firstName": "Employee", \ 
   "lastName": "Two" \ 
 }' 'http://localhost:3000/api/Employee'

curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.idb.medrec.Employee", \ 
   "email": "employee3", \ 
   "firstName": "Employee", \ 
   "lastName": "Three" \ 
 }' 'http://localhost:3000/api/Employee'


###############MEDICAL EMPLOYEES#################
 curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.idb.medrec.MedicalEmployee", \ 
   "email": "medicalemployee1", \ 
   "firstName": "Medical Employee", \ 
   "lastName": "One" \ 
 }' 'http://localhost:3000/api/MedicalEmployee'

###############MEDICAL RECORDS#################
 curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.idb.medrec.MedicalRecord", \ 
   "medicalRecord": "medicalRecord1", \ 
   "attributes": [ \ 
     { \ 
       "$class": "org.idb.medrec.MedicalRecordAttribute", \ 
       "name": "Blood Type", \ 
       "value": "A Positive", \ 
       "type": "STRING", \ 
       "id": "string" \ 
     } \ 
   ], \ 
   "employee": "employee1" \ 
 }' 'http://localhost:3000/api/MedicalRecord'

 curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.idb.medrec.MedicalRecord", \ 
   "medicalRecord": "medicalRecord2", \ 
   "attributes": [ \ 
     { \ 
       "$class": "org.idb.medrec.MedicalRecordAttribute", \ 
       "name": "Blood Type", \ 
       "value": "O Negative", \ 
       "type": "STRING", \ 
       "id": "string" \ 
     },{ \ 
       "$class": "org.idb.medrec.MedicalRecordAttribute", \ 
       "name": "Height", \ 
       "value": "175", \ 
       "type": "INTEGER", \ 
       "id": "string" \ 
     } \ 
   ], \ 
   "employee": "employee2" \ 
 }' 'http://localhost:3000/api/MedicalRecord'