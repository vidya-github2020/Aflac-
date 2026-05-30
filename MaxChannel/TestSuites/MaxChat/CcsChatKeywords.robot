* Settings
Resource    ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxKeywords.robot
Documentation    The keywords in this file are intended for all test suites
...              contained in any of the test suite folders in this feature directory

* Variables

* Keywords
Login as a ${ccsUser} CCS and select the ${workQueue} work queue
    Open the CCS portal Pega_SignIn_URL
    Run Keyword    Log into the MaxChat CCS portal with ${ccsUser} 
    Run Keyword    The MaxChat CCS joins the ${workQueue} work queue



