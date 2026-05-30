###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

* Variables
${lbl_AgentChat_emailForm_headerText}    xpath://span[text()="Contact Customer Service"]

${fld_AgentChat_emailForm_firstName}              xpath://div[@data-test-id='202102231002370144460']//span[@data-test-id="202102151139260365661"]
${fld_AgentChat_emailForm_firstName_apiFailed}    xpath://div[@data-test-id='202102231002370144460']//input[@data-test-id="202102151139260365661"]
${fld_AgentChat_emailForm_firstName_noCookie}     ${fld_AgentChat_emailForm_firstName_apiFailed}

${fld_AgentChat_emailForm_lastName}              xpath://div[@data-test-id='202102230959050949233']//span[@data-test-id="202102050924460272485"]
${fld_AgentChat_emailForm_lastName_apiFailed}    xpath://div[@data-test-id='202102230959050949233']//input[@data-test-id="202102050924460272485"]
${fld_AgentChat_emailForm_lastName_noCookie}     ${fld_AgentChat_emailForm_lastName_apiFailed}

${fld_AgentChat_emailForm_emailAddress}              xpath://div[@data-test-id='202102031354340926765']//span[@data-test-id="202102031704590075117"]
${fld_AgentChat_emailForm_emailAddress_apiFailed}    ${fld_AgentChat_emailForm_emailAddress}
${fld_AgentChat_emailForm_emailAddress_noCookie}     xpath://div[@data-test-id='202102031354340926765']//input[@data-test-id="202102031704590075117"]

${fld_AgentChat_emailForm_writingNumber}              xpath://div[@data-test-id="2021020314073703443"]//input[@data-test-id="202102031407370357886"]
${fld_AgentChat_emailForm_writingNumber_apiFailed}    ${fld_AgentChat_emailForm_writingNumber}
${fld_AgentChat_emailForm_writingNumber_noCookie}     xpath://div[@data-test-id='2021020314073703443']//input[@data-test-id="202102031407370357886"]

${fld_AgentChat_emailForm_companyNumber}              xpath://select[@data-test-id="202106221752490651967"]
${fld_AgentChat_emailForm_companyNumber_apiFailed}    ${fld_AgentChat_emailForm_companyNumber}
${fld_AgentChat_emailForm_companyNumber_noCookie}     xpath://select[@data-test-id="202102031407370359427"]

${fld_AgentChat_emailForm_primaryReason}      xpath://select[@id='SecondaryRequestReason']
${fld_AgentChat_emailForm_secondaryReason}    xpath://select[@id='TertiaryRequestReason']

${AgentChat_emailForm_firstName_validationMsg}          xpath://div[@data-test-id='202102231002370144460']//div//span[@class='iconError dynamic-icon-error']
${AgentChat_emailForm_lastName_validationMsg}           xpath://div[@data-test-id='202102230959050949233']//div//span[@class='iconError dynamic-icon-error']
${AgentChat_emailForm_emailAddress_validationMsg}       xpath://div[@data-test-id='202102031354340926765']//div//span[@class='iconError dynamic-icon-error']
${AgentChat_emailForm_writingNumber_validationMsg}      xpath://div[@data-test-id='2021020314073703443']//div//span[@class='iconError dynamic-icon-error']
${AgentChat_emailForm_companyNumber_validationMsg}      xpath://div[@data-test-id='202102260419120226171']//div//span[@class='iconError dynamic-icon-error']
${AgentChat_emailForm_primaryReason_validationMsg}      xpath://div[@data-test-id='202102230959410033225']//div//span[@class='iconError dynamic-icon-error']
${AgentChat_emailForm_secondaryReason_validationMsg}    xpath://div[@data-test-id='202102041155230674742']//div//span[@class='iconError dynamic-icon-error']
${AgentChat_emailForm_requestReason_validationMsg}      xpath://div[@data-test-id='202102031400310360340']//div//span[@class='iconError dynamic-icon-error']

${AgentChat_textArea_requestReason}    xpath://textarea[@id='Payload']
${btn_AgentChat_emailForm_submit}      xpath://button[@data-test-id='202102020913060307956']

${lbl_AgentChat_emailForm_successSubmitMessage}    xpath://div[(@data-test-id='202102170653220330560')]//span[contains(text(),'thank you for contacting Aflac')]
${btn_AgentChat_emailForm_submitNewRequest}        xpath://button[@data-test-id='202102170653220335175']


* Keywords
Select the AgentChat agent email form submit button
    Select the iFrame on the AgentChat email form
    Wait Until Element Is Visible    ${btn_AgentChat_emailForm_submit}     timeout=${xxlTimeout}
    Click Element    ${btn_AgentChat_emailForm_submit}
    Wait for Chatbot System loading icon to complete

Select the AgentChat agent email form new request button
    Wait Until Element Is Visible    ${btn_AgentChat_emailForm_submitNewRequest}     timeout=${xxlTimeout}
    Click Element    ${btn_AgentChat_emailForm_submitNewRequest}
    Sleep    1s

