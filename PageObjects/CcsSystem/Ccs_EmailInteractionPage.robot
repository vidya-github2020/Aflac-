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
${AgentChat_CcsHomeTab}            xpath://span[@id='TABANCHOR']//span[text()='Home']
${btn_AgentChat_saveCloseChat}     xpath://button[contains(@class,'Wrap_up_button') and contains(@title,'Save and close the case')]
${btn_AgentChat_closeEmailForm}    xpath://button[contains(@class,'Wrap_up_button') and contains(@title,'Close')]

${btn_AgentChat_reply}    xpath://i[contains(@data-test-id,'2017060103282508381001753') and (@aria-hidden="true")]

${opt_AgentChat_replies_account}    xpath://li[contains(@data-test-id,'201710231552560435775')]//span[text()='Account']
${opt_AgentChat_replies_claims}     xpath://li[contains(@data-test-id,'201710231552560435775')]//span[text()='Claims']
${opt_AgentChat_replies_misc}       xpath://li[contains(@data-test-id,'201710231552560435775')]//span[text()='Misc']

${opt_AgentChat_replies_policyHolder}              xpath://li[contains(@data-test-id,'201710231552560435775')]//span[text()='PolicyHolder']
${opt_AgentChat_replies_policyHolder_additions}    xpath://li[contains(@data-test-id,'201908260814110132373')]//span[text()='Additions']

${AgentChat_mailTo_defaultEmailAddress}    xpath://span[contains(@class,'token')]//div[contains(@class,'token-cancel')]
${AgentChat_mailTo_newEmailAddress}        xpath://div[@data-test-id="2018032107093600095551"]//input[@data-primary-value="pyEmail"]
${AgentChat_mailTo_newEmail}               sdevlin@aflac.com
${AgentChat_mailTo_useNewEmail}            xpath://span[contains(@class,'match') and contains(text(),'sdevlin@aflac.com')]
${AgentChat_mailTo_send}                   xpath://button[@data-test-id="20170711065240059319776"]


* Keywords
The AgentChat CCS selects the save and close button
    Click the AgentChat button    btn_AgentChat_saveCloseChat
    Sleep    1s

The AgentChat CCS selects the email form close button
    Click the AgentChat button    btn_AgentChat_closeEmailForm
    Sleep    1s

The AgentChat CCS selects the reply button
    Sleep    3s
    Select the PegaGadget1Ifr iFrame
    Click the AgentChat button    btn_AgentChat_reply

The AgentChat CCS selects the mailTo send button
    Click the AgentChat button    AgentChat_mailTo_send

The AgentChat CCS selects the ${replyOption} option then ${replySubption}
    Sleep    1s
    Mouse Over    ${opt_AgentChat_replies_${replyOption}}
    Sleep    1s
    Click the AgentChat button    opt_AgentChat_replies_${replyOption}_${replySubption}

The AgentChat CCS deletes the default mailto address and adds a new aflac email
    Wait Until Element Is Visible    ${AgentChat_mailTo_defaultEmailAddress}    timeout=${mTimeout}
    Click the AgentChat button    AgentChat_mailTo_defaultEmailAddress
    Sleep    1s
    Input Text    ${AgentChat_mailTo_newEmailAddress}    ${AgentChat_mailTo_newEmail}    clear=True
    Sleep    1s
    Press Keys    None    SPACE
    Sleep    1s
    Press Keys    None    RETURN

