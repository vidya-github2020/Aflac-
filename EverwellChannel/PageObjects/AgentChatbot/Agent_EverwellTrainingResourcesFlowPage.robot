###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}EverwellChannel${/}Settings.resource

* Variables
${lbl_EverwellChat_everwellTrainingResourcesLink}    ${lbl_getChatBotSections}


* Keywords
Begin an EverwellChat Everwell Training Resources flow
    Select the EverwellChat Everwell Training Resources option
    # Ignore line as not supported by Legacy, bring in for new DM   Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_everwellTrainingResourcesLink
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_helpToResolveMessage

Did the information resolve your issue in the EverwellChat
    [Arguments]    ${optYesNo}
    Run Keyword    Select the EverwellChat ${optYesNo} option 
    
    