###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}MaxChannel${/}Settings.resource

# PAGE OBJECTS
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}PageObjects_TimeRange.robot

# Page objects - Agent Chatbot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}AgentChatbot${/}Agent_ClaimCenterPage.robot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}AgentChatbot${/}Agent_ConnectToCcsPage.robot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}AgentChatbot${/}Agent_LandingPage.robot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}AgentChatbot${/}Agent_LearnAboutALetterPage.robot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}AgentChatbot${/}Agent_MakePaymentsPage.robot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}AgentChatbot${/}Agent_PolicyChangesPage.robot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}AgentChatbot${/}Agent_PolicyInformationPage.robot

# Page objects - CCS System
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}CcsSystem${/}Ccs_ChatInteractionPage.robot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}CcsSystem${/}Ccs_DashboardPage.robot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}CcsSystem${/}Ccs_ModalPage.robot

# Page objects - Validation
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}Validation${/}Agent_LiveChatValidationPage.robot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}Validation${/}Agent_RedirectValidationPage.robot

# Page Objects - LoginPage
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}LoginPage.robot
Resource    ${EXECDIR}${/}MaxChannel${/}PageObjects${/}HomePage.robot
