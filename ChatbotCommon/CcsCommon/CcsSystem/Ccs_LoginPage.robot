*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${txtBox_UserName}    xpath://input[contains(@id,'txtUserID') and contains(@name,'UserIdentifier')]
${txtBox_Password}    xpath://input[contains(@id,'txtPassword') and contains(@name,'Password')]
${btn_Login}          id:sub

${sso_txtBox_UserName}    xpath://input[contains(@id,'userid')]
${sso_txtBox_Password}    xpath://input[contains(@id,'password')]
${sso_btn_Login}          xpath://button[contains(@id,'lnkSubmit')]
${sso_mdl_overlay}        xpath://area[contains(@onClick,'Group2019EnhanceFFS_CloseOverlay();') and contains(@alt,'Close')]

${lbl_logoutBody}        xpath://body
${lbl_logoutBody_txt}    Your session has ended. You may close your browser window if you wish.

*** Keywords
Select the ${paveChatbot} login button
    Run Keyword    Click the ${paveChatbot} button    btn_Login
    &{browserAlias}=    Get Browser Aliases
    FOR    ${alias}    IN    @{browserAlias}
        Run Keyword IF    'CcsPortal' in '''${alias}'''    Run Keyword    If displayed close the Unauthorised Security Request modal popup after selecting 'btn_Login'
    END
    
Select the ${paveChatbot} SSO login button
    Run Keyword    Click the ${paveChatbot} button    sso_btn_Login

Handle the Privacy popup
    [Arguments]    ${btn_option} 
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btn_option}    timeout=${lTimeout}
    IF  '${status}' == 'True'
    Click Element    ${btn_option}
    Sleep    2s
    END   

