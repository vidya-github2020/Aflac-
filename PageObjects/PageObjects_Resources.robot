###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

# PAGE OBJECTS
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}PageObjects_TimeRange.robot

# Page objects - Agent Chatbot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}AgentChatbot${/}Agent_ChatSurveysPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}AgentChatbot${/}Agent_ConnectToCcsPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}AgentChatbot${/}Agent_FaxSubmissionPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}AgentChatbot${/}Agent_LandingPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}AgentChatbot${/}Agent_VirtualEnrollmentPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}AgentChatbot${/}Agent_WellnessReportPage.robot

# Page objects - CCS System
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}CcsSystem${/}Ccs_ChatInteractionPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}CcsSystem${/}Ccs_ChatMonitorPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}CcsSystem${/}Ccs_ChatReportsPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}CcsSystem${/}Ccs_DashboardPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}CcsSystem${/}Ccs_EmailInteractionPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}CcsSystem${/}Ccs_ModalPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}CcsSystem${/}Ccs_SearchPage.robot

# Page objects - Customer 360
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Tab_AccountsPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Tab_AgentAssistSearch.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Tab_ContractsPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Tab_EntityProducersPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Tab_ImagesPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Tab_LicensesPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Tab_MgmtHierarchyPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Tab_NewAndPendedBusinessPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Tab_SummaryPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Accounts${/}Tab_MembersPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Accounts${/}Tab_SummaryPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Customer360${/}Accounts${/}Tab_InvoicesPage.robot

# Page objects - Validation
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Validation${/}Agent_LiveChatValidationPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Validation${/}Agent_RedirectValidationPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Validation${/}LoginValidationPage.robot
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Validation${/}Customer360${/}C360_HeaderPage.robot

# Email Form - Validation
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}EmailForm${/}EmailFormPage.robot

# SmartScreen
Resource    ${EXECDIR}${/}AgentChannel${/}PageObjects${/}Smartscreen${/}Agent_SearchInteractionPage.robot