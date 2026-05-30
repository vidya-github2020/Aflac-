*** Variables ***
${signIn_Button}         id:signIn
${input_UserName}        xpath://input[@name="aflacusername"]
${input_Password}        xpath://input[@name='password']
${btn_Login_Continue}    xpath://button[contains(text(),'Continue')]
#${btn_AcceptAll}         xpath://button[@id='onetrust-accept-btn-handler' and text()='Accept All']
${btn_RejectAll}         xpath://button[@id='onetrust-reject-all-handler' and text()='Reject All']

*** Keywords ***
Log into the MaxChat portal
    Switch to the MaxCcsPortal browser
    Handle the Privacy popup    ${btn_AcceptAll}
    Reload Page
    Wait Until Element Is Visible    ${input_UserName}    timeout=${lTimeout}
    Input Text    ${input_UserName}    ${DM_MaxChat_ccs_uName}    clear=True
    Wait Until Element Is Visible    ${btn_Login_Continue}    timeout=${lTimeout}
    Click Element    ${btn_Login_Continue}
    Wait Until Element Is Visible    ${input_Password}    timeout=${lTimeout}
    Input Password    ${input_Password}    ${DM_MaxChat_ccs_password}    clear=True
    Click Element    ${signIn_Button}
    Log to console    Waiting for the MaxChat portal to load
    Sleep    5s
    Wait for pega masking icon to complete
