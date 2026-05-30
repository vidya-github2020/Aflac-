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
${lbl_PolicyHolderChat_learnLetter_Message}              ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_learnLetter_ProvideLetterCode}    ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_learnLetter_Details}    ${lbl_getChatBotSections}

* Keywords
Begin a PolicyHolderChat Learn About A Letter flow
    Select the PolicyHolderChat Learn About A Letter option
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_learnLetter_Message
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_learnLetter_ProvideLetterCode

Enter the letter code
    Input Text    ${fld_liveChatTextarea}    ${msg_PolicyHolderChat_learnLetter_provideLetterCode}    clear=True
    Select the PolicyHolderChat Send Message button

Begin a PolicyHolderDMChat Learn About A Letter flow
    Initiate the PolicyHolderChat live DMchat session
    Select Frame    ${Iframe}
    Select the PolicyHolderDMChat Learn About A Letter option

Enter PolicyHolderChat DM letter code
    Sleep    5s
    Input Text    ${fld_DMliveChatTextarea}    ${msg_PolicyHolderChat_learnLetter_provideLetterCode}    clear=True
    Click PolicyHolderDMChat Send Message button

Verify the PolicyHolderChat letter details message appears
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_learnLetter_Details
