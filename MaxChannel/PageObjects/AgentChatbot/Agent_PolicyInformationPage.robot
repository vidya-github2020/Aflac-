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
${opt_MaxChat_policyInfo_setupDirectDeposit}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(1)_1')]
${opt_MaxChat_policyInfo_policyPremium}         xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(2)_1')]
${opt_MaxChat_policyInfo_coveredBenefits}       xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(3)_1')]
${opt_MaxChat_policyInfo_policyNumber}          xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(4)_1')]
${opt_MaxChat_policyInfo_policyPaidToDate}      xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(5)_1')]
${opt_MaxChat_policyInfo_policyStatus}          xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(6)_1')]
${opt_MaxChat_policyInfo_coveredDependents}     xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(7)_1')]
${opt_MaxChat_policyInfo_servicingAgent}        xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(8)_1')]
${opt_MaxChat_policyInfo_returnToMainMenu}      xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(9)_1')]
${opt_MaxChat_policyInfo_ChatWithCcs}           xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(10)_1')]

${lbl_MaxChat_policyInfo_infoMessage}                   ${lbl_getChatBotSections}
${lbl_MaxChat_policyInfo_setupDirectDeposit_Message}    ${lbl_getChatBotSections}
${lbl_MaxChat_policyInfo_policyPremium_Message}         ${lbl_getChatBotSections}
${lbl_MaxChat_policyInfo_coveredBenefits_Message}       ${lbl_getChatBotSections}
${lbl_MaxChat_policyInfo_policyNumber_Message}          ${lbl_getChatBotSections}
${lbl_MaxChat_policyInfo_paidToDate_Message}            ${lbl_getChatBotSections}
${lbl_MaxChat_policyInfo_policyStatus_Message}          ${lbl_getChatBotSections}
${lbl_MaxChat_policyInfo_coveredDependents_Message}     ${lbl_getChatBotSections}
${lbl_MaxChat_policyInfo_servicingAgent_Message}        ${lbl_getChatBotSections}

* Keywords
Begin a MaxChat Policy Information flow
    Select the MaxChat Policy Information option
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyInfo_infoMessage

Select the MaxChat Policy Info Setup Direct Deposit option
    Click the MaxChat button    opt_MaxChat_policyInfo_setupDirectDeposit
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyInfo_setupDirectDeposit_Message

Select the MaxChat Policy Info Policy Premium option
    Click the MaxChat button    opt_MaxChat_policyInfo_policyPremium
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyInfo_policyPremium_Message

Select the MaxChat Policy Info Covered Benefits option
    Click the MaxChat button    opt_MaxChat_policyInfo_coveredBenefits
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyInfo_coveredBenefits_Message

Select the MaxChat Policy Info Policy Number option
    Click the MaxChat button    opt_MaxChat_policyInfo_policyNumber
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyInfo_policyNumber_Message

Select the MaxChat Policy Info Policy Paid To Date option
    Click the MaxChat button    opt_MaxChat_policyInfo_policyPaidToDate
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyInfo_paidToDate_Message

Select the MaxChat Policy Info Policy Status option
    Click the MaxChat button    opt_MaxChat_policyInfo_policyStatus
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyInfo_policyStatus_Message

Select the MaxChat Policy Info Covered Dependents option
    Click the MaxChat button    opt_MaxChat_policyInfo_coveredDependents
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyInfo_coveredDependents_Message

Select the MaxChat Policy Info Servicing Agent option
    Click the MaxChat button    opt_MaxChat_policyInfo_servicingAgent
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyInfo_servicingAgent_Message

Select the MaxChat Policy Info Return To Main Menu option
    Click the MaxChat button    opt_MaxChat_policyInfo_returnToMainMenu
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_mainMenuMessage

