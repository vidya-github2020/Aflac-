###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}MaxChannel${/}Settings.resource

* Variables
${opt_MaxChat_claimCenter_wasMyFaxReceived}       xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(1)_1')]
${opt_MaxChat_claimCenter_howToSubmiteMyClaim}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(2)_1')]
${opt_MaxChat_claimCenter_claimStatus}            xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(3)_1')]
${opt_MaxChat_claimCenter_whyWasMyClaimDenied}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(4)_1')]
${opt_MaxChat_claimCenter_returnToMainMenu}       xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(5)_1')]
${opt_MaxChat_claimCenter_ChatWithCcs}            xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(6)_1')]

${lbl_MaxChat_claimCenter_infoMessage}                ${lbl_getChatBotSections}
${lbl_MaxChat_claimCenter_faxReceived_preQuestion}    ${lbl_getChatBotSections}
${lbl_MaxChat_claimCenter_submitClaim_preQuestion}    ${lbl_getChatBotSections}
${lbl_MaxChat_claimCenter_claimStatus_preQuestion}    ${lbl_getChatBotSections}
${lbl_MaxChat_claimCenter_claimDenied_preQuestion}    ${lbl_getChatBotSections}


* Keywords
Begin a MaxChat Claim Center flow
    Select the MaxChat Claim Center option
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_claimCenter_infoMessage

Select the MaxChat Claim Center Was My Fax Received option
    Click the MaxChat button    opt_MaxChat_claimCenter_wasMyFaxReceived
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_claimCenter_faxReceived_preQuestion

Select the MaxChat Claim Center How To Submit My Claim option
    Click the MaxChat button    opt_MaxChat_claimCenter_howToSubmiteMyClaim
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_claimCenter_submitClaim_preQuestion

Select the MaxChat Claim Center Claim Status option
    Click the MaxChat button    opt_MaxChat_claimCenter_claimStatus
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_claimCenter_claimStatus_preQuestion

Select the MaxChat Claim Center Why Was My Claim Denied option
    Click the MaxChat button    opt_MaxChat_claimCenter_whyWasMyClaimDenied
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_claimCenter_claimDenied_preQuestion

Select the MaxChat Claim Center Return To Main Menu option
    Click the MaxChat button    opt_MaxChat_claimCenter_returnToMainMenu
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_mainMenuMessage

