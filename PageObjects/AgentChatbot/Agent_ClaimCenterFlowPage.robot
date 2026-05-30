###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource

* Variables
${opt_PolicyHolderChat_claimCenter_wasMyFaxReceived}       xpath://button[@data-testid="fax inquiry"]
${opt_PolicyHolderChat_claimCenter_howToSubmiteMyClaim}    xpath://button[@data-testid="file claim"]
${opt_PolicyHolderChat_claimCenter_claimStatus}            xpath://button[@data-testid="claim inquiry"]
${opt_PolicyHolderChat_claimCenter_whyWasMyClaimDenied}    xpath://button[@data-testid="claim denied"]
${opt_PolicyHolderChat_claimCenter_returnToMainMenu}       xpath://button[@data-testid="Return to Main Menu"]
${opt_PolicyHolderChat_claimCenter_ChatWithCcs}            xpath://button[@data-testid="Initiate Live Chat"]

${lbl_PolicyHolderChat_claimCenter_infoMessage}                ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_claimCenter_faxReceived_preQuestion}    ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_claimCenter_submitMessage}              ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_claimCenter_cs_preQuestion}             ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_claimCenter_cs_notPH}             ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_claimCenter_cs_claimSubmitDate}          ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_claimCenter_cs_mailInfoMessage}                ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_claimCenter_cs_claimEstimate}            xpath://span[@data-testid="text_message_csr" and contains(text(), 'Based on the information you have provided we estimate that we will begin reviewing your claim on')]
${opt_PolicyHolderChat_claimCenter_aflacAssociate}            xpath://button[@data-testid="Aflac Associate"]
${opt_PolicyHolderChat_claimCenter_fax}            xpath://button[@data-testid="Fax"]
${opt_PolicyHolderChat_claimCenter_mail}            xpath://button[@data-testid="Mail"]
${opt_PolicyHolderChat_claimCenter_smartClaim}            xpath://button[@data-testid="SmartClaim"]

${opt_PolicyHolderChat_claimCenter_accident}            xpath://button[@data-testid="Accident"]
${opt_PolicyHolderChat_claimCenter_cancer}            xpath://button[@data-testid="Cancer"]
${opt_PolicyHolderChat_claimCenter_disabilty}            xpath://button[@data-testid="Disabilty"]
${opt_PolicyHolderChat_claimCenter_hospital}            xpath://button[@data-testid="Hospital"]
${opt_PolicyHolderChat_claimCenter_dental}            xpath://button[@data-testid="Dental"]
${opt_PolicyHolderChat_claimCenter_wellness}            xpath://button[@data-testid="Wellness"]
${opt_PolicyHolderChat_claimCenter_vision}            xpath://button[@data-testid="Vision"]

* Keywords
Begin a PolicyHolderChat Claim Center flow
    Select the PolicyHolderChat Claim Center option
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_claimCenter_infoMessage

Select the PolicyHolderChat Claim Center Was My Fax Received option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_wasMyFaxReceived
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_claimCenter_faxReceived_preQuestion

Select the PolicyHolderChat Claim Center How To Submit My Claim option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_howToSubmiteMyClaim
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_claimCenter_submitMessage

Select the PolicyHolderChat Claim Center Claim Status option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_claimStatus
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_claimCenter_cs_preQuestion

Select the PolicyHolderChat Claim Center Why Was My Claim Denied option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_whyWasMyClaimDenied
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_claimCenter_cs_preQuestion

Select the PolicyHolderChat Claim Center Return To Main Menu option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_returnToMainMenu
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_mainMenuMessage

Select the PolicyHolderChat Claim Center Chat With A Care Specialist option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_ChatWithCcs

The PolicyHolderChat agent opens the claim center was my fax received verify me form
    Begin a PolicyHolderChat Claim Center flow
    Select the PolicyHolderChat Claim Center Was My Fax Received option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

The PolicyHolderChat agent opens the claim center claim status verify me form
    Begin a PolicyHolderChat Claim Center flow
    Select the PolicyHolderChat Claim Center Claim Status option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

The PolicyHolderChat agent opens the claim center claim status estimate claim review date form
    Begin a PolicyHolderChat Claim Center flow
    Select the PolicyHolderChat Claim Center Claim Status option
    Are you the current policyholder    No
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_claimCenter_cs_notPH

Select the PolicyHolderChat Claim Center Aflac Associate flow
    Select the PolicyHolderChat Claim Center Aflac Associate option
    Select the PolicyHolderChat Claim Center Accident option
    Enter the claim date
    Wait Until Element Is Visible    ${lbl_PolicyHolderChat_claimCenter_cs_claimEstimate}    timeout=${lTimeout}

Select the PolicyHolderChat Claim Center Mail flow
    Select the PolicyHolderChat Claim Center Mail option
    Select the PolicyHolderChat Claim Center Cancer option
    Enter the claim date
    Wait Until Element Is Visible    ${lbl_PolicyHolderChat_claimCenter_cs_claimEstimate}    timeout=${lTimeout}
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_claimCenter_cs_mailInfoMessage

Select the PolicyHolderChat Claim Center Fax flow
    Select the PolicyHolderChat Claim Center Fax option
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_claimCenter_faxReceived_preQuestion
    Are you the current policyholder    No

Select the PolicyHolderChat Claim Center SmartClaim flow
    Select the PolicyHolderChat Claim Center SmartClaim option
    Select the PolicyHolderChat Claim Center Hospital option
    Enter the claim date
    Wait Until Element Is Visible    ${lbl_PolicyHolderChat_claimCenter_cs_claimEstimate}    timeout=${lTimeout}

The PolicyHolderChat agent opens the claim center why was my claim denied verify me form
    Begin a PolicyHolderChat Claim Center flow
    Select the PolicyHolderChat Claim Center Why Was My Claim Denied option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

Would you like to chat with a PolicyHolderChat Claim Center CCS
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PolicyHolderChat Claim Center Chat With A Care Specialist option
        Select the PolicyHolderChat Connect Me With An Aflac Representative option
    ELSE
        Do Nothing
    END

Select the PolicyHolderChat Claim Center Aflac Associate option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_aflacAssociate

Select the PolicyHolderChat Claim Center Mail option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_mail

Select the PolicyHolderChat Claim Center Fax option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_fax

Select the PolicyHolderChat Claim Center SmartClaim option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_smartClaim

Select the PolicyHolderChat Claim Center Accident option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_accident

Select the PolicyHolderChat Claim Center Cancer option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_cancer

Select the PolicyHolderChat Claim Center Hospital option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_claimCenter_hospital

Enter the claim date
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_claimCenter_cs_claimSubmitDate
    ${current_Date}    Get Current Date    result_format=%m/%d/%Y
    Input Text    ${fld_liveChatTextarea}    ${current_Date}    clear=True
    Select the PolicyHolderChat Send Message button
