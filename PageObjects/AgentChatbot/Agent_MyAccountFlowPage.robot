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
# ${opt_PolicyHolderChat_myAccount_passwordOrAccountReset}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(1)_1')]
${opt_PolicyHolderChat_myAccount_forgotMyPassword}          xpath://button[@data-testid="reset password MyAflac"]
#${opt_PolicyHolderChat_myAccount_enablePhoneForSms}         xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(2)_1')]
${opt_PolicyHolderChat_myAccount_returnToMainMenu}          xpath://button[@data-testid="Return to Main Menu"]
${opt_PolicyHolderChat_myAccount_ChatWithCcs}               xpath://button[@data-testid="Initiate Live Chat"]

${opt_PolicyHolderDMChat_myAccount_CCS}                xpath://button[@data-testid='Initiate Live Chat']     
${opt_PolicyHolderDMChat_myAccount_returnToMainMenu}        xpath://button[@data-testid='Return to Main Menu']        
${lbl_PolicyHolderChat_myAccount_mostCommonOptions}    ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_myAccount_forgotPassword}       ${lbl_getChatBotSections}
${opt_PolicyHolderDMChat_myAccount_forgotMyPassword}   xpath://button[@data-testid='reset password MyAflac'] 
${lbl_PolicyHolderDMChat_myAccount_forgotPassword}     ${lbl_DMChatBotSections}
${Iframe}                   id:pegaChatWidget
                                                

* Keywords
Begin a PolicyHolderChat My Account flow
    Select the PolicyHolderChat My Account option
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_myAccount_mostCommonOptions

Begin a PolicyHolderDMChat My Account flow
    Initiate the PolicyHolderChat live DMchat session
    Select Frame    ${Iframe}
    Select the PolicyHolderDMChat My Account option

Select the PolicyHolderChat My Account Password or Account Reset option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_myAccount_passwordOrAccountReset
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_verifyMe_Auth
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_verifyMe_Continue

Select the PolicyHolderChat My Account Forgot My Password option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_myAccount_forgotMyPassword
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_myAccount_forgotPassword

Select the PolicyHolderDMChat My Account Forgot My Password option
    Click the PolicyHolderChat button    opt_PolicyHolderDMChat_myAccount_forgotMyPassword
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderDMChat_myAccount_forgotPassword

Select the PolicyHolderChat My Account Enable Phone For Aflac SMS Reset option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_myAccount_enablePhoneForSms
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_preQuestion

Select the PolicyHolderChat My Account Return To Main Menu option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_myAccount_returnToMainMenu
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_mainMenuMessage

Select the PolicyHolderDMChat My Account Return To Main Menu option
    Click the PolicyHolderChat button    opt_PolicyHolderDMChat_myAccount_returnToMainMenu
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderDMChat_mainMenuMessage

Select the PolicyHolderDMChat Chat With A Care Specialist
    Click the PolicyHolderChat button     opt_PolicyHolderDMChat_myAccount_CCS
    
Select the PolicyHolderChat My Account Chat With A Care Specialist option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_myAccount_ChatWithCcs

The PolicyHolderChat agent opens the my account enable phone verify me form
    Begin a PolicyHolderChat My Account flow
    Select the PolicyHolderChat My Account Enable Phone For Aflac SMS Reset option
    Are you the current policyholder    Yes
    Select the PolicyHolderChat verify me form button

The PolicyHolderChat agent opens the my account password or account reset verify me form
    Begin a PolicyHolderChat My Account flow
    Select the PolicyHolderChat My Account Password or Account Reset option
    Select the PolicyHolderChat verify me form button

Would you like to chat with a PolicyHolderChat My Account CCS
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PolicyHolderChat My Account Chat With A Care Specialist option
        Select the PolicyHolderChat Connect Me With An Aflac Representative option
    ELSE
        Do Nothing
    END

