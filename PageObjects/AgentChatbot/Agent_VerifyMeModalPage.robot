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
## ----- Chat Bot Sections ----- ##
${lbl_PolicyHolderChat_preQuestion}              ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_areYouThePolicyHolder}    ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_verifyMe_Auth}            ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_verifyMe_Continue}        ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_verifyMe_CancelForm}      ${lbl_getChatBotSections}


* Keywords

