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
# ${opt_PolicyHolderChat_policyChanges_addDropPerson}        xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(1)_1')]
${opt_PolicyHolderChat_policyChanges_mailingAddress}       xpath://button[@data-testid="policy address change"]
${opt_PolicyHolderChat_policyChanges_bankDraft}            xpath://button[@data-testid="Bank Draft"]
${opt_PolicyHolderChat_policyChanges_changeBeneficiary}    xpath://button[@data-testid="Change Beneficiary"]
${opt_PolicyHolderChat_policyChanges_genderIdentity}       xpath://button[@data-testid="Gender Identity Change"]
${opt_PolicyHolderChat_policyChanges_orderPolicyIdCard}    xpath://button[@data-testid="Order Policy ID Card"]
# ${opt_PolicyHolderChat_policyChanges_reinstateMyPolicy}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(7)_1')]
${opt_PolicyHolderChat_policyChanges_returnToMainMenu}     xpath://button[@data-testid="Return to Main Menu"]
${opt_PolicyHolderChat_policyChanges_ChatWithCcs}          xpath://button[@data-testid="Initiate Live Chat"]

${lbl_PolicyHolderChat_policyChanges_mostCommonOptions}    ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_pc_addDrop_Message}                 ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_pc_bankDraft_Message}               ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_pc_changeBeneficiary_Message}       ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_pc_genderIdentity_Message}          ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_pc_orderPolicyIdCard_Message}       ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_pc_reinstateMyPolicy_Message}       ${lbl_getChatBotSections}

* Keywords
Begin a PolicyHolderChat Policy Changes flow
    Select the PolicyHolderChat Policy Changes option
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_policyChanges_mostCommonOptions

Select the PolicyHolderChat Policy Changes Add Drop A Person option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyChanges_addDropPerson
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_pc_addDrop_Message

Select the PolicyHolderChat Policy Changes Mailing Address option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyChanges_mailingAddress

Select the PolicyHolderChat Policy Changes Bank Draft option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyChanges_bankDraft
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_pc_bankDraft_Message

Select the PolicyHolderChat Policy Changes Change Beneficiary option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyChanges_changeBeneficiary
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_pc_changeBeneficiary_Message

Select the PolicyHolderChat Policy Changes Gender Identity option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyChanges_genderIdentity
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_pc_genderIdentity_Message

Select the PolicyHolderChat Policy Changes Order Policy Id Card option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyChanges_orderPolicyIdCard
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_pc_orderPolicyIdCard_Message

Select the PolicyHolderChat Policy Changes Reinstate My Policy option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyChanges_reinstateMyPolicy
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_pc_reinstateMyPolicy_Message

Select the PolicyHolderChat Policy Changes Return To Main Menu option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyChanges_returnToMainMenu
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_mainMenuMessage

Select the PolicyHolderChat Policy Changes Chat With A Care Specialist option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyChanges_ChatWithCcs

The PolicyHolderChat agent opens the policy changes mailing address verify me form
    Begin a PolicyHolderChat Policy Changes flow
    Select the PolicyHolderChat Policy Changes Mailing Address option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

Would you like to chat with a PolicyHolderChat Policy Changes CCS
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PolicyHolderChat Policy Changes Chat With A Care Specialist option
        Select the PolicyHolderChat Connect Me With An Aflac Representative option
    ELSE
        Do Nothing
    END

