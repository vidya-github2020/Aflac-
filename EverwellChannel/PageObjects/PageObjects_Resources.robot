###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}EverwellChannel${/}Settings.resource

# PAGE OBJECTS
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}PageObjects_TimeRange.robot
# Page objects - Agent Chatbot
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}AgentChatbot${/}Agent_ChatSurveysPage.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}AgentChatbot${/}Agent_ConnectToCcsPage.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}AgentChatbot${/}Agent_CustomerAssistanceFlowPage.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}AgentChatbot${/}Agent_EverwellAssistanceFlowPage.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}AgentChatbot${/}Agent_EverwellTrainingResourcesFlowPage.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}AgentChatbot${/}Agent_GroupAssistanceFlowPage.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}AgentChatbot${/}Agent_LandingPage.robot
# Page objects - CCS System
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}CcsSystem${/}Ccs_ChatInteractionPage.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}CcsSystem${/}Ccs_DashboardPage.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}CcsSystem${/}Ccs_ModalPage.robot
# Page objects - Validation
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}Validation${/}Agent_LiveChatValidationPage.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}Validation${/}Agent_RedirectValidationPage.robot
