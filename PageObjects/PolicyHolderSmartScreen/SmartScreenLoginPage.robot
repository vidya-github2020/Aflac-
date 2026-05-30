*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables ***
${PH_SS_userName}        xpath://input[@id='txtUserID']    
${PH_SS_password}        xpath://input[@id='txtPassword']
${PH_SS_loginBtn}        xpath://button[@id='sub']//*[text()='Log in']
${PH_SS_logoutBtn}       xpath://span[contains(text(),'Logout')]  
${PH_SS_userdropdown}    xpath://a[@data-test-id='20150716133810025311145' and @title='Click to select option']

*** Keywords ***
Log in to the SmartScreen Pega portal with user ${ccsUser}
    Sleep    5s
    IF    '${gEnvironment}'=='SysT'
        Run Keyword    Log in as a SmartScreen live chat sso ccs ${ccsUser}
        Close the CCS interation tab if one is open
    ELSE
        Run Keyword    Log into the SmartScreen Pega portal with ${${ccsUser}_ccs_uName}
        Close the CCS interation tab if one is open
    END

Log into the SmartScreen Pega portal with ${uName}
    Wait Until Element Is Visible    ${PH_SS_userName}    timeout=${sTimeout}
    Input Text    ${PH_SS_userName}    ${uName}    clear=True
    Input Password    ${PH_SS_password}    ${SSUser_ccs_uPwd}    clear=True
    Click Element     ${PH_SS_loginBtn}                                                                              
    Log to console    Waiting for the SmartScreen  portal to load
    Sleep    5s
    Wait for pega masking icon to complete
    Close the CCS interation tab if one is open
    
Logout from the SmartScreen portal
    Unselect Frame    
    Wait Until Element Is Visible    ${PH_SS_userdropdown}     timeout=${sTimeout}
    Click Element    ${PH_SS_userdropdown}    
    Sleep    2s  
    Wait Until Element Is Visible    ${PH_SS_logoutBtn}     timeout=${sTimeout}
    Click Element    ${PH_SS_logoutBtn}  
    Sleep    2s 
    Close Browser    
    
Verify login fields are displayed
    Wait Until Element Is Visible    ${PH_SS_userName}    timeout=${sTimeout}
    Sleep    2s