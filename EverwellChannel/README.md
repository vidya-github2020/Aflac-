#Introduction To Everwell
What is the purpose of the Everwell ChatBot?? ...

#Getting Started
Follow instructions in: https://aflacnorthernireland.atlassian.net/wiki/spaces/Testing/pages/50462753/Robot+Framework+Usage

#How To Build and Test 
Navigate to the root folder of the Everwell project in a cmd window, ie: 
C:\Users\xxx\Documents\Projects\Pave\PAVERobotFrameworkTests

To run single test: robot --outputdir ./Output 'FileLocation'/'name'.robot 
-> ie: robot --outputdir ./Output EverwellChannel/TestSuites/EverwellChannel/Basic_Functionality/Branding.robot 
-> This will run all tests in Branding test suite and store the results in the ./Output folder directory

To run parallel tests:
1. pabot --processes 2 --exclude Ignore --outputdir ./Output/IntG/ ../EverwellChannel/TestSuites/EverwellChannel
  -> This will run all tests, 2 at a time, and ignore tests tagged with Ignore
2. pabot --processes 2 --exclude Ignore --include Run_In_SysT --outputdir ./Output/SysT ../EverwellChannel/TestSuites/EverwellChannel
  -> This will only run tests tagged with Run_In_SysT, 2 at a time, and ignore tests tagged with Ignore

If the folder directory does not exist, that you specify in your run command, it will be created automatically when executed

To rerun failed tests:
1. robot --exclude Ignore --rerunfailedsuites Output/IntG/output.xml --outputdir ./Output/IntG/rerun --output rerun.xml ../EverwellChannel/TestSuites/EverwellChannel
2. robot --exclude Ignore --rerunfailed Output/IntG/output.xml --outputdir ./Output/IntG/rerun --output rerun.xml ../EverwellChannel/TestSuites/EverwellChannel

This will rerun all tests suites that failed in the original run, and will create new report files

To merge test reports:
1. rebot --merge Output/IntG/output.xml Output/IntG/rerun/rerun.xml

This will create new log.html and report.html files, that contains the results from both the original and reran test runs

#Contribute
The Robot Tests for PAVE - Everwell Chat Channel will be stored on GitHub: 
https://github.com/Aflac-SCM/PAVE_RobotFrameworkTests
