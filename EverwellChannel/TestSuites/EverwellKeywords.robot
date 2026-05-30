* Settings
Documentation    The keywords in this file are intended for all test suites
...              contained in any of the feature folders in this root directory
Resource    ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}Settings.resource

* Variables
${Everwellinput_UserName}    xpath://input[@aria-label="Username"]
${Everwellinput_Password}    xpath://input[@aria-label="Password"]
${Everwell_LogIn_Button}     xpath://button[@aria-label="Log in"]

* Keywords
Open the EverwellChat chatbot
    Open the live chat page
    Log into the EverwellChat portal
    Initiate the EverwellChat live chat session

Log into the EverwellChat portal
    #Switch to the EverwellCcsPortal browser
    Wait Until Element Is Visible    ${Everwellinput_UserName}    timeout=${lTimeout}
    Input Text    ${Everwellinput_UserName}    ${DM_Everwell_ccs_uName}    clear=True
    Wait Until Element Is Visible    ${Everwellinput_Password}    timeout=${lTimeout}
    Input Password    ${Everwellinput_Password}    ${DM_Everwell_ccs_password}    clear=True
    Click Element    ${Everwell_LogIn_Button}
    Log to console    Waiting for the EverwellChat portal to load
    Sleep    5s
    Wait for pega masking icon to complete    