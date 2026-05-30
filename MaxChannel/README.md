#Introduction 
PAVE: Priortizing, Automating, Valuing and Experience

1. PAVE will be implemented under the One Digital Aflac Experience Pillar.
2. Provide Aflac Policyholders and Associates a 24/7 self service capability using automated and artificial
intelligence across Voice, Email, Chat and SMS.
3. Retire Client Central (Aflac legacy customer service tool).
4. ANI team are focused on developing a chatbot and live chat capability that will be surfaced on both Field Force
Service and Agent Hub. Providing our field the ability to self serve, and enabling direct access to our customer
solutions teams as needed.

#Getting Started
1. Follow instructions in:
https://aflacnorthernireland.atlassian.net/wiki/spaces/Testing/pages/50462753/Robot+Framework+Usage


#Build and Test
Navigate to the root folder of the PAVE project in a cmd window, 
ie: C:\Users\xxx\Documents\Projects\Pave\PAVERobotFrameworkTests

To run single test:
1. robot --outputdir ./Output 'FileLocation'/'name'.robot
-> ie: robot --outputdir ./Output MaxChannel/TestSuites/MaxChannel/Basic_Functionality/BasicFunctionality.robot
-> This will run all tests in the test suite and store the results in the ./Output folder directory

To run parallel tests:
1. pabot --processes 2 --exclude Ignore --outputdir ./Output/IntG/ ../MaxChannel/TestSuites/MaxChannel
-> This will run all tests, 2 at a time, and ignore tests tagged with Ignore
2. pabot --processes 2 --exclude Ignore --include SystTest --outputdir ./Output/SysT ../MaxChannel/TestSuites/MaxChannel
-> This will only run tests tagged with SystTest, 2 at a time, and ignore tests tagged with Ignore

If the folder directory does not exist, that you specify in your run command, it will be created automatically when executed

To rerun failed tests:
1. robot --exclude Ignore --rerunfailedsuites Output/IntG/output.xml --outputdir ./Output/IntG/rerun --output rerun.xml ../MaxChannel/TestSuites/MaxChannel
2. robot --exclude Ignore --rerunfailed Output/IntG/output.xml --outputdir ./Output/IntG/rerun --output rerun.xml ../MaxChannel/TestSuites/MaxChannel

This will rerun all tests suites that failed in the original run, and will create new report files

To merge test reports:
1. rebot --merge Output/IntG/output.xml Output/IntG/rerun/rerun.xml

This will create new log.html and report.html files, that contains the results from both the original and reran test runs

#Contribute
The Robot Tests for PAVE - Max Chat Channel will be stored on GitHub: 
https://github.com/Aflac-SCM/PAVE_RobotFrameworkTests

