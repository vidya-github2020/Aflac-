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
${fld_policyHolderChat_trackingComments}    xpath://span[@data-test-id='20191001054617019479944']


* Keywords
Get ${certComments} and ${interactionComments} from Call Tracking Comments
    VAR    ${expectedText1}    ${certComments}    
    VAR    ${expectedText2}    ${interactionComments}    
    Scroll button or label into view    ${fld_policyHolderChat_trackingComments}
    Wait Until Element Is Visible    ${fld_policyHolderChat_trackingComments}    timeout=${sTimeout}
    ${getText}    Get Text    ${fld_policyHolderChat_trackingComments}
    Should Contain    ${getText}    ${expectedText1}
    Should Contain    ${getText}    ${expectedText2}
