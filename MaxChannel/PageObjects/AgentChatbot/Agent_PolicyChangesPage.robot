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
${opt_MaxChat_policyChanges_addDropPerson}        xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(1)_1')]
${opt_MaxChat_policyChanges_mailingAddress}       xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(2)_1')]
${opt_MaxChat_policyChanges_bankDraft}            xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(3)_1')]
${opt_MaxChat_policyChanges_changeBeneficiary}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(4)_1')]
${opt_MaxChat_policyChanges_genderIdentity}       xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(5)_1')]
${opt_MaxChat_policyChanges_orderPolicyIdCard}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(6)_1')]
${opt_MaxChat_policyChanges_reinstateMyPolicy}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(7)_1')]
${opt_MaxChat_policyChanges_returnToMainMenu}     xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(8)_1')]
${opt_MaxChat_policyChanges_ChatWithCcs}          xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(9)_1')]

${lbl_MaxChat_policyChanges_infoMessage}                  ${lbl_getChatBotSections}
${lbl_MaxChat_policyChanges_addDropPerson_Message}        ${lbl_getChatBotSections}
${lbl_MaxChat_policyChanges_mailingAddress_Message}       ${lbl_getChatBotSections}
${lbl_MaxChat_policyChanges_bankDraft_Message}            ${lbl_getChatBotSections}
${lbl_MaxChat_policyChanges_changeBeneficiary_Message}    ${lbl_getChatBotSections}
${lbl_MaxChat_policyChanges_genderIdentity_Message}       ${lbl_getChatBotSections}
${lbl_MaxChat_policyChanges_orderPolicyIdCard_Message}    ${lbl_getChatBotSections}
${lbl_MaxChat_policyChanges_reinstateMyPolicy_Message}    ${lbl_getChatBotSections}

* Keywords
Begin a MaxChat Policy Changes flow
    Select the MaxChat Policy Changes option
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyChanges_infoMessage

Select the MaxChat Policy Changes Add Drop A Person option
    Click the MaxChat button    opt_MaxChat_policyChanges_addDropPerson
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyChanges_addDropPerson_Message

Select the MaxChat Policy Changes Mailing Address option
    Click the MaxChat button    opt_MaxChat_policyChanges_mailingAddress
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyChanges_mailingAddress_Message

Select the MaxChat Policy Changes Bank Draft option
    Click the MaxChat button    opt_MaxChat_policyChanges_bankDraft
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyChanges_bankDraft_Message

Select the MaxChat Policy Changes Change Beneficiary option
    Click the MaxChat button    opt_MaxChat_policyChanges_changeBeneficiary
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyChanges_changeBeneficiary_Message

Select the MaxChat Policy Changes Gender Identity option
    Click the MaxChat button    opt_MaxChat_policyChanges_genderIdentity
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyChanges_genderIdentity_Message

Select the MaxChat Policy Changes Order Policy Id Card option
    Click the MaxChat button    opt_MaxChat_policyChanges_orderPolicyIdCard
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyChanges_orderPolicyIdCard_Message

Select the MaxChat Policy Changes Reinstate My Policy option
    Click the MaxChat button    opt_MaxChat_policyChanges_reinstateMyPolicy
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_policyChanges_reinstateMyPolicy_Message

Select the MaxChat Policy Changes Return To Main Menu option
    Click the MaxChat button    opt_MaxChat_policyChanges_returnToMainMenu
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_mainMenuMessage

