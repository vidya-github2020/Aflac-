###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource

# PAGE OBJECTS
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_TimeRange.robot

# Page objects - Agent Chatbot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_ChatSurveysPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_ClaimCenterFlowPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_ConnectToCcsPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_EstimateClaimReviewDateModalPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_LandingPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_LearnAboutALetterFlowPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_MakePaymentsFlowPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_MyAccountFlowPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_PolicyChangesFlowPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_PolicyInformationFlowPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}AgentChatbot${/}Agent_VerifyMeModalPage.robot

# Page objects - CCS System
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}CcsSystem${/}Ccs_ChatInteractionPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}CcsSystem${/}Ccs_DashboardPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}CcsSystem${/}Ccs_ModalPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}CcsSystem${/}Ccs_PhoneInteractionPage.robot

# Page objects - Customer 360
## -- Claims -- ##
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Claim${/}c360_ClaimPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Claim${/}c360_ClaimTabsPage.robot
## -- Contact Information -- ##
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}ContactInfo${/}c360_ContactInformationPage.robot
## --  General -- #
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}General${/}c360_GeneralPage.robot  
## -- Insured Information -- ##
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}InsuredInfo${/}c360_InsuredInformationPage.robot
## -- Payment -- ##
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Payment${/}c360_PaymentPage.robot
## -- Policy -- ##
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_AccountingPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_AssocCommPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_BenefitsPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_ClaimRecapPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_ConversionHistoryPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_ConvValPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_DetailsPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_ExceptionsPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_ImagesPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_LetterHistoryPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_MaintenancePage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_NbvPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_PersonsPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_RefundsPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_RemarksPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_ReturnsPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_SummaryPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyTab_SuspensePage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Policy${/}c360_PolicyCertificatePage.robot
## -- Common -- ##
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}Customer360HeaderPage.robot

# Page objects - Validation
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Validation${/}Agent_LiveChatValidationPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Validation${/}Agent_RedirectValidationPage.robot

#Page objects - Smart screen
Resource     ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SmartScreenLoginPage.robot
Resource     ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchInteractionPage.robot
Resource     ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SmartScreenCommonKeywords.robot
Resource     ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchResultsScreenPage.robot
Resource     ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}Customer360${/}Policy${/}Policy_ReturnsPage.robot

#Page objects - Smart screen - Add Tasks
Resource     ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}AddTasks${/}Policy${/}OrderDuplicatePolicyPage.robot
Resource     ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}AddTasks${/}General${/}SixCodePage.robot

#Page objects - Check Inquiry
Resource     ${EXECDIR}${/}CheckInquiryChannel${/}PageObjects${/}CheckInquirySearchInteractionPage.robot
