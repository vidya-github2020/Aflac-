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

* Keywords
The PolicyHolderChat agent adds a comment to complete the experience survey
    [Arguments]    ${surveyComment}
    Verify that the PolicyHolderChat live chat message is displayed lbl_additionalSurveyComments
    Input Text    ${fld_liveChatTextarea}    ${surveyComment}    clear=True
    Select the PolicyHolderChat Send Message button
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_thankYouMessage

