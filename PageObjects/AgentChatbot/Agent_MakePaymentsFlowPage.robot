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
${opt_PolicyHolderChat_makePayments_oneTimePayment}       xpath://button[@data-testid="make payment"]
${opt_PolicyHolderChat_makePayments_automaticPayments}    xpath://button[@data-testid="AutoPay Confirmation"]
${opt_PolicyHolderChat_makePayments_returnToMainMenu}     xpath://button[@data-testid="Return to Main Menu"]
${opt_PolicyHolderChat_makePayments_ChatWithCcs}          xpath://button[@data-testid="Initiate Live Chat"]

${lbl_PolicyHolderChat_makePayment_mostCommonOptions}    ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_makePayment_OTP}                  ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_makePayment_AP}                   ${lbl_getChatBotSections}

* Keywords
Begin a PolicyHolderChat Make Payments flow
    Select the PolicyHolderChat Make Payments option
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_makePayment_mostCommonOptions

Select the PolicyHolderChat Make Payments OneTimePayment option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_makePayments_oneTimePayment    

Select the PolicyHolderChat Make Payments AutomaticPayments option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_makePayments_automaticPayments

Select the PolicyHolderChat Make Payments Return To Main Menu option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_makePayments_returnToMainMenu
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_mainMenuMessage

Select the PolicyHolderChat Make Payments Chat With A Care Specialist option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_makePayments_ChatWithCcs

The PolicyHolderChat agent opens the make payments ${paymentoption} verify me form
    Begin a PolicyHolderChat Make Payments flow
    Run Keyword    Select the PolicyHolderChat Make Payments ${paymentoption} option
    Do you want to make payments for    ${paymentoption}    Yes
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

Do you want to make payments for
    [Arguments]    ${paymentOption}    ${optYesNo}
    IF    '${paymentOption}'=='OneTimePayment'
        Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_makePayment_OTP
    ELSE
        Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_makePayment_AP
    END
    IF    '${optYesNo}'=='Yes'
        Run Keyword    Select the PolicyHolderChat ${optYesNo} option
        Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_preQuestion
    ELSE
        Run Keyword    Select the PolicyHolderChat ${optYesNo} option
        Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_mainMenuMessage
    END

Would you like to chat with a PolicyHolderChat Make Payments CCS
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PolicyHolderChat Make Payments Chat With A Care Specialist option
        Select the PolicyHolderChat Connect Me With An Aflac Representative option
    ELSE
        Do Nothing
    END

