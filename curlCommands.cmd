REM  A script to invoke some sample curl commands on a Windows machine
REM  against a running container image of the app-specific Gilhari microservice 
REM  gilhari_simple_example:1.0.
REM
REM  The responses are recorded in a log file (curl.log).
REM
REM  Note that these curl commands use a default mapped port number of 80
REM  even though the port number exposed by the app-specific
REM  microservice may be different (e.g., 8081) inside the container shell.
REM
REM  You may optionally specify a non-default port number as the first 
REM  command line argument to this script. For example, to spcify a 
REM  port number of 8899, use the following command:
REM     curlCommands 8899

IF %1.==. GOTO DefaultPort
SET port=%1
GOTO Proceed

:DefaultPort
SET port=80
GOTO Proceed

:Proceed

echo ** BEGIN OUTPUT ** > curl.log
echo. >> curl.log

echo Using PORT number %port% >> curl.log
echo. >> curl.log

echo ** Delete all Student objects to start fresh >> curl.log
curl -X DELETE "http://localhost:%port%/gilhari/v1/Student" >> curl.log
echo. >> curl.log
echo. >> curl.log


echo ** Query all Student objects >> curl.log
curl -X GET "http://localhost:%port%/gilhari/v1/Student"  -H "Content-Type: application/json" >> curl.log
echo. >> curl.log
echo. >> curl.log

echo ** Insert multiple Student objects >> curl.log
curl -X POST "http://localhost:%port%/gilhari/v1/Student"  -H "Content-Type: application/json"  -d "{""entity"":[
    {"id": 1, "name": "Aarav Kumar", "height": 172, "weight": 68},
    {"id": 2, "name": "Ananya Singh", "height": 160, "weight": 54},
    {"id": 3, "name": "Vihaan Sharma", "height": 165, "weight": 60},
    {"id": 4, "name": "Aditi Patel", "height": 158, "weight": 52},
    {"id": 5, "name": "Ishaan Gupta", "height": 170, "weight": 65},
    {"id": 6, "name": "Kiara Joshi", "height": 162, "weight": 55},
    {"id": 7, "name": "Aryan Reddy", "height": 175, "weight": 70},
    {"id": 8, "name": "Saanvi Rao", "height": 159, "weight": 53},
    {"id": 9, "name": "Dev Sharma", "height": 168, "weight": 62},
    {"id": 10, "name": "Riya Patel", "height": 157, "weight": 51},
    {"id": 11, "name": "Aditya Kumar", "height": 173, "weight": 69},
    {"id": 12, "name": "Manya Singh", "height": 161, "weight": 56},
    {"id": 13, "name": "Rohan Gupta", "height": 169, "weight": 63},
    {"id": 14, "name": "Nidhi Joshi", "height": 163, "weight": 57},
    {"id": 15, "name": "Arjun Reddy", "height": 176, "weight": 71},
    {"id": 16, "name": "Tanya Rao", "height": 160, "weight": 54},
    {"id": 17, "name": "Kartik Sharma", "height": 167, "weight": 61},
    {"id": 18, "name": "Pooja Patel", "height": 156, "weight": 50},
    {"id": 19, "name": "Siddharth Kumar", "height": 174, "weight": 70},
    {"id": 20, "name": "Shreya Singh", "height": 158, "weight": 52},
    {"id": 21, "name": "Kabir Gupta", "height": 171, "weight": 66},
    {"id": 22, "name": "Prachi Joshi", "height": 164, "weight": 58},
    {"id": 23, "name": "Raghav Reddy", "height": 177, "weight": 72},
    {"id": 24, "name": "Aarushi Rao", "height": 159, "weight": 53},
    {"id": 25, "name": "Yash Sharma", "height": 166, "weight": 60},
    {"id": 26, "name": "Kritika Patel", "height": 155, "weight": 49},
    {"id": 27, "name": "Rahul Kumar", "height": 172, "weight": 68},
    {"id": 28, "name": "Sneha Singh", "height": 161, "weight": 55},
    {"id": 29, "name": "Vivaan Gupta", "height": 165, "weight": 59},
    {"id": 30, "name": "Simran Joshi", "height": 162, "weight": 56},
    {"id": 31, "name": "Arav Reddy", "height": 176, "weight": 71},
    {"id": 32, "name": "Anvi Rao", "height": 160, "weight": 54},
    {"id": 33, "name": "Neil Sharma", "height": 168, "weight": 63},
    {"id": 34, "name": "Divya Patel", "height": 157, "weight": 51},
    {"id": 35, "name": "Kunal Kumar", "height": 174, "weight": 70},
    {"id": 36, "name": "Sana Singh", "height": 158, "weight": 52},
    {"id": 37, "name": "Ritvik Gupta", "height": 171, "weight": 66},
    {"id": 38, "name": "Isha Joshi", "height": 164, "weight": 58},
    {"id": 39, "name": "Krishna Reddy", "height": 177, "weight": 72},
    {"id": 40, "name": "Meera Rao", "height": 159, "weight": 53},
    {"id": 41, "name": "Anirudh Sharma", "height": 167, "weight": 61},
    {"id": 42, "name": "Sakshi Patel", "height": 156, "weight": 50},
    {"id": 43, "name": "Rishi Kumar", "height": 173, "weight": 69},
    {"id": 44, "name": "Radhika Singh", "height": 160, "weight": 54},
    {"id": 45, "name": "Arnav Gupta", "height": 165, "weight": 60},
    {"id": 46, "name": "Kajal Joshi", "height": 162, "weight": 56},
    {"id": 47, "name": "Dhruv Reddy", "height": 175, "weight": 70},
    {"id": 48, "name": "Bhavna Rao", "height": 158, "weight": 52},
    {"id": 49, "name": "Naman Sharma", "height": 170, "weight": 65},
    {"id": 50, "name": "Ritu Patel", "height": 155, "weight": 49}
]}" >> curl.log
echo. >> curl.log
echo. >> curl.log

echo ** Query all Student objects >> curl.log
curl -X GET "http://localhost:%port%/gilhari/v1/Student"  -H "Content-Type: application/json" >> curl.log
echo. >> curl.log
echo. >> curl.log

echo ** Delete all Student objects >> curl.log
curl -X DELETE "http://localhost:%port%/gilhari/v1/Student" >> curl.log
echo. >> curl.log
echo. >> curl.log

echo ** Query the count of all Student objects >> curl.log
curl -X GET "http://localhost:%port%/gilhari/v1/Student/getAggregate?attribute=id&aggregateType=COUNT"  -H "Content-Type: application/json" >> curl.log
echo. >> curl.log
echo. >> curl.log

echo ** END OUTPUT ** >> curl.log
echo. >> curl.log

type curl.log

