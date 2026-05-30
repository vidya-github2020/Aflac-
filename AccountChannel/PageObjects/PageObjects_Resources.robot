###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource

## -- Common -- ##
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot

#Page objects - Smart screen-AccountChannel
Resource     ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SmartScreenLoginPage.robot
Resource     ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchInteractionPage.robot
Resource     ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SmartScreenCommonKeywords.robot
Resource     ${EXECDIR}${/}AccountChannel${/}PageObjects${/}AccountSearchInteractionPage.robot
Resource     ${EXECDIR}${/}AccountChannel${/}PageObjects${/}ViewInvoicesPage.robot

#Page objects - Smart screen - AccountChannel- Add Tasks
Resource     ${EXECDIR}${/}AccountChannel${/}PageObjects${/}UpdateLocationAddressPage.robot
Resource     ${EXECDIR}${/}AccountChannel${/}PageObjects${/}UpdatePhoneNumberPage.robot
Resource     ${EXECDIR}${/}AccountChannel${/}PageObjects${/}GroupCorresFormPage.robot
Resource     ${EXECDIR}${/}AccountChannel${/}PageObjects${/}ReprintEnvelopePage.robot

