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
${opt_PolicyHolderChat_policyInfo_setupDirectDeposit}    xpath://button[@data-testid="direct deposit"]
${opt_PolicyHolderChat_policyInfo_policyPremium}         xpath://button[@data-testid="policy premium"]
${opt_PolicyHolderChat_policyInfo_coveredBenefits}       xpath://button[@data-testid="policy benefits"]
${opt_PolicyHolderChat_policyInfo_policyNumber}          xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(4)_1')]
${opt_PolicyHolderChat_policyInfo_policyPaidToDate}      xpath://button[@data-testid="policy paid to date"]
${opt_PolicyHolderChat_policyInfo_policyStatus}          xpath://button[@data-testid="policy status"]
${opt_PolicyHolderChat_policyInfo_coveredDependents}     xpath://button[@data-testid="policy coverage"]
${opt_PolicyHolderChat_policyInfo_servicingAgent}        xpath://button[@data-testid="agent inquiry"]
${opt_PolicyHolderChat_policyInfo_returnToMainMenu}      xpath://button[@data-testid="Return to Main Menu"]
${opt_PolicyHolderChat_policyInfo_ChatWithCcs}           xpath://button[@data-testid="Initiate Live Chat"]

${opt_PolicyHolderChat_pi_coveredBenefits_downloadInstructions}    xpath://button[contains(@aria-label, 'Instructions for Downloading')]
${opt_PolicyHolderChat_pi_coveredBenefits_mailCopy}                xpath://button[contains(@aria-label, 'Mail Copy')]

${lbl_PolicyHolderChat_policyInfo_mostCommonOptions}          ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_pi_setupDirectDeposit_Message}         ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_pi_coveredBenefits_Message}            ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_pi_cb_downloadInstructions_Message}    ${lbl_getChatBotSections}

* Keywords
Begin a PolicyHolderChat Policy Information flow
    Select the PolicyHolderChat Policy Information option
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_policyInfo_mostCommonOptions

Select the PolicyHolderChat Policy Info Setup Direct Deposit option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyInfo_setupDirectDeposit
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_pi_setupDirectDeposit_Message

Select the PolicyHolderChat Policy Info Policy Premium option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyInfo_policyPremium

Select the PolicyHolderChat Policy Info Covered Benefits option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyInfo_coveredBenefits
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_pi_coveredBenefits_Message

Select the PolicyHolderChat Policy Info Covered Benefits Instructions For Downloading option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_pi_coveredBenefits_downloadInstructions
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_pi_cb_downloadInstructions_Message

Select the PolicyHolderChat Policy Info Covered Benefits Mail Copy option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_pi_coveredBenefits_mailCopy

Select the PolicyHolderChat Policy Info Policy Number option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyInfo_policyNumber

Select the PolicyHolderChat Policy Info Policy Paid To Date option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyInfo_policyPaidToDate

Select the PolicyHolderChat Policy Info Policy Status option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyInfo_policyStatus

Select the PolicyHolderChat Policy Info Covered Dependents option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyInfo_coveredDependents

Select the PolicyHolderChat Policy Info Servicing Agent option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyInfo_servicingAgent

Select the PolicyHolderChat Policy Info Return To Main Menu option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyInfo_returnToMainMenu
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_mainMenuMessage

Select the PolicyHolderChat Policy Info Chat With A Care Specialist option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_policyInfo_ChatWithCcs

The PolicyHolderChat agent opens the policy info policy premium verify me form
    Begin a PolicyHolderChat Policy Information flow
    Select the PolicyHolderChat Policy Info Policy Premium option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

The PolicyHolderChat agent opens the policy info policy number verify me form
    Begin a PolicyHolderChat Policy Information flow
    Select the PolicyHolderChat Policy Info Policy Number option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

The PolicyHolderChat agent opens the policy info policy paid to date verify me form
    Begin a PolicyHolderChat Policy Information flow
    Select the PolicyHolderChat Policy Info Policy Paid To Date option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

The PolicyHolderChat agent opens the policy info policy status verify me form
    Begin a PolicyHolderChat Policy Information flow
    Select the PolicyHolderChat Policy Info Policy Status option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

The PolicyHolderChat agent opens the policy info covered dependents verify me form
    Begin a PolicyHolderChat Policy Information flow
    Select the PolicyHolderChat Policy Info Covered Dependents option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

The PolicyHolderChat agent opens the policy info servicing agent verify me form
    Begin a PolicyHolderChat Policy Information flow
    Select the PolicyHolderChat Policy Info Servicing Agent option
    Are you the current policyholder    Yes
    #Select the PolicyHolderChat verify me form button

The PolicyHolderChat agent opens the policy info covered benefits mail copy verify me form
    Begin a PolicyHolderChat Policy Information flow
    Select the PolicyHolderChat Policy Info Covered Benefits option
    Select the PolicyHolderChat Policy Info Covered Benefits Mail Copy option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

Would you like to chat with a PolicyHolderChat Policy Information CCS
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PolicyHolderChat Policy Info Chat With A Care Specialist option
        Select the PolicyHolderChat Connect Me With An Aflac Representative option
    ELSE
        Do Nothing
    END

Verify the PolicyHolderChat further assistance message appears
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_furtherAssistancePH

Verify the PolicyHolderChat further assistance message 2 appears
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_furtherAssistancePH2

