
*** Variables ***
${Iframe}                  xpath://iframe[@id="pegaChatWidget"]
${btn_MaxChat_Home}        xpath://a[contains(text(),'Home')]
${btn_MaxChat_endChat}     xpath://span[text()='End session']
${btn_MaxChat_Support}     xpath://a[contains(text(),'Support')]
${btn_MaxChat_MyClaims}    xpath://a[contains(text(),'My Claims')]
${txtarea_MaxChat_Menu}    xpath://textarea[@data-testid='type_a_message']
${btn_MaxChat_NewClaim}    xpath://a[contains(text(),'New Claim')]
${btn_MaxChat_Continue}    xpath://span[contains(text(),'Continue')] 
${btn_MaxChat_endSession}             xpath://button[@id='end-chat-button' and text()='End session']
${btn_MaxChat_MyCoverage}             xpath://a[contains(text(),'My Coverage')]
${btn_MaxChat_LearnAbout}             xpath://button[@data-testid='letter code']
${btn_MaxChat_sendMessage}            xpath://button[@title='Send message']
${lbl_MaxChat_HeaderTitle}            xpath://h1[@class='home-header-title']
${btn_MaxChat_ClaimCenter}            xpath://button[@data-testid='Claim']
${btn_MaxChat_RemovePerson}           xpath://button[@data-testid="remove person"]
${btn_MaxChat_MakePayments}           xpath://button[@data-testid='Make a Payment']
${btn_MaxChat_otherActions}           xpath://button[@data-testid='menu']
${btn_MaxChat_DirectDeposit}          xpath://button[@data-testid='direct deposit']
${btn_MaxChat_PolicyChanges}          xpath://button[@data-testid='Make Policy Changes']
${btn_MaxChat_LearnAbout_txt}         xpath://span[@data-testid='text_message_csr']
${btn_MaxChat_CareSpecialist}         xpath://button[@data-testid='Chat With Agent']
${lbl_MaxChat_Support_Claims}         xpath://h2[contains(text(),'Claims')]
${lbl_MaxChat_Support_support}        xpath://h1[contains(text(),'Got questions?')]
${MaxChat_welcomeMessageChat}         xpath://h2[contains(text(),'Chat with Aflac')]
${lbl_MaxChat_NewClaim_claim}         xpath://h2[contains(text(),'What happened?')]
${btn_MaxChat_Homepage_ChatUs}        xpath://span[contains(text(),'Chat With Us')]
${btn_MaxChat_WasMyFaxReceived}       xpath://button[@data-testid='fax inquiry']
${btn_MaxChat_PolicyInformation}      xpath://button[@data-testid='Policy Information']
${lbl_MaxChat_MyClaims_NewClaim}      xpath://h2[contains(text(),'Start a new claim')]
${btn_MaxChat_ChatWithSpecialist}     xpath://button[@data-testid='Initiate Live Chat']
${lbl_MaxChat_MyCoverage_coverage}    xpath://h1[@class="coverage-counter-title" and contains(text(),'My Coverage')]
${btn_MaxChat_MyAccount}              xpath://button[contains(text(),' My Account')]
${btn_MaxChat_Logout}                 xpath://button/span[contains(text(),'Logout')]

* Keywords

Click on the ChatUs button on the Homepage
    Wait for pega masking icon to complete
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btn_MaxChat_Homepage_ChatUs}    timeout=${mTimeout}
    IF    '${status}'=='True'
    Click Element    ${btn_MaxChat_Homepage_ChatUs} 
    ELSE    
    Wait for pega masking icon to complete
    Sleep    10s
    Wait Until Element Is Visible    ${btn_MaxChat_Homepage_ChatUs}    timeout=${lTimeout}
    Click Element    ${btn_MaxChat_Homepage_ChatUs}
    END

Verify the MaxChat live chat message is displayed
    Sleep    3s
    Wait for Chatbot System loading icon to complete
    Select Frame    ${Iframe}
    Wait Until Element Is Visible    ${MaxChat_welcomeMessageChat}    timeout=${lTimeout}    

Select the MaxChat textarea field and enter Menu as text
    Wait for Chatbot System loading icon to complete
    Wait Until Element Is Visible    ${txtarea_MaxChat_Menu}    timeout=${lTimeout}
    Input Text    ${txtarea_MaxChat_Menu}    Menu
    Click Element    ${btn_MaxChat_sendMessage}
    Sleep    3s 

Select the MaxChat ${option} option on Homepage
    Wait for Chatbot System loading icon to complete
    Wait Until Element Is Visible    ${lbl_MaxChat_HeaderTitle}    timeout=${xxlTimeout}
    Wait Until Element Is Visible    ${btn_MaxChat_${option}}    timeout=${xxlTimeout}
    Click Element    ${btn_MaxChat_${option}}
    Sleep    3s

Verify the ${text} text when select the option as ${option}
    Wait for Chatbot System loading icon to complete
    Wait Until Element Is Visible    ${lbl_MaxChat_${option}_${text}}    timeout=${lTimeout}

The user returns to the MaxChat Homepage
    Wait for Chatbot System loading icon to complete
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btn_MaxChat_Home}    timeout=${lTimeout}
    IF    '${status}'=='True'
        Click Element    ${btn_MaxChat_Home}
    ELSE 
        Do Nothing
    END
    Sleep    3s

End the Max Chat live chat session
    Wait for Chatbot System loading icon to complete
    Switch to the MaxCcsPortal browser
    Wait Until Element Is Visible    ${btn_MaxChat_otherActions}    timeout=${mTimeout}
    Click Element    ${btn_MaxChat_otherActions}
    Wait Until Element Is Visible    ${btn_MaxChat_endChat}    timeout=${mTimeout}
    Click Element    ${btn_MaxChat_endChat}
    Wait Until Element Is Visible    ${btn_MaxChat_endSession}    timeout=${mTimeout}
    Click Element    ${btn_MaxChat_endSession}
    Wait Until Element Is Not Visible    ${btn_MaxChat_otherActions}    timeout=${mTimeout}
    Unselect Frame

Select the DM MaxChat ${option} option
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${btn_MaxChat_${option}}    timeout=${lTimeout}
    Click Element    ${btn_MaxChat_${option}}
    Sleep    3s

Verify the MaxChat live chat Option is displayed ${option}
    Wait for pega masking icon to complete    
    Wait Until Element Is Visible    ${${option}}    timeout=${mTimeout}  

