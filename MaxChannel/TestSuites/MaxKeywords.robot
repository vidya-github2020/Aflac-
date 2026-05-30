* Settings
Documentation    The keywords in this file are intended for all test suites
...              contained in any of the feature folders in this root directory
Resource    ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource    ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Resource    ${EXECDIR}${/}MaxChannel${/}Settings.resource

* Variables

* Keywords
Open the MaxChat chatbot
    Open the live chat page
    Initiate the MaxChat live chat session

Login as a MaxChat CCS select the ${workQueue} work queue and start a live chat session
    Run Keyword    Login as a MaxChat CCS and select the ${workQueue} work queue
    The MaxChat CCS is made available
    Open the MaxChat chatbot

Log into MaxChat Chat portal
    Open the Max_CCS portal MaxWebChat_URL
    Log into the MaxChat portal

Login as a DM ${ccsUser} CCS select the ${workQueue} work queue and start a live chat session
    Run Keyword    Login as a ${ccsUser} CCS and select the ${workQueue} work queue
    The MaxChat CCS is made available
    Log into MaxChat Chat portal 
    
Begin a DM MaxChat Policy Information flow    
    Click On The ChatUs Button On The Homepage
    Verify the MaxChat live chat message is displayed
    Select the DM MaxChat ChatWithSpecialist option 
    Select the DM MaxChat Continue option
    Enter the DM MaxChat user connection details
     
    
    

