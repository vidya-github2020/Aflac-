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
${lbl_MaxChat_makePayments_infoMessage}    ${lbl_getChatBotSections}

* Keywords
Begin a MaxChat Make Payment flow
    Select the MaxChat Make Payments option
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_makePayments_infoMessage

