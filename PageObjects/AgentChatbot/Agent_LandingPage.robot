###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

* Variables
## ----- Email Link ----- ##
${btn_AgentChat_emailCCSLink}    xpath://a[@href='https://sell-syst.aflac.com/Email%20Form%20PAVE.aspx']

## ----- Main Menu ----- ##
${opt_AgentChat_FeatureInfo}                        css:div\#rte-default > div.rteReadOnlyWithoutTB a
${opt_AgentChat_userOptions}                        xpath://a[contains(@name, 'pySimulatorChoice_Message.pyChoices')]
${opt_AgentChat_CheckStatusOfFaxedDocumentation}    xpath://button[@data-testid="Check Faxed Documentation Status"]
${opt_AgentChat_CheckStatusOfClaim}                 xpath://button[@data-testid="Claim Status"]
${opt_AgentChat_Compensation}                       xpath://button[@data-testid="Compensation"]
${opt_AgentChat_GetMyPendingBusiness}               xpath://button[@data-testid="Pended Business"]
${opt_AgentChat_Statements}                         xpath://button[@data-testid="My Statements"]
${opt_AgentChat_WellnessReporting}                  xpath://button[@data-testid="Wellness Reporting"]
${opt_AgentChat_ChatWithCCS}                        xpath://button[@data-testid="Chat with agent"]
${opt_AgentChat_VirtualEnrollmentTools}             xpath://button[@data-testid="Virtual Enrollment Tools"]

## ----- Chat Bot Sections ----- ##
${lbl_AgentChat_welcomeMessageChat}           ${lbl_getChatBotSections}
${lbl_AgentChat_welcomeMessageChatOOO}        ${lbl_getChatBotSections}
${lbl_AgentChat_welcomeMessageNoCookie}       ${lbl_getChatBotSections}
${lbl_AgentChat_welcomeMessageNoCookieOOO}    ${lbl_getChatBotSections}

${lbl_AgentChat_claimStatus}                  ${lbl_getChatBotSections}
${lbl_AgentChat_compensation}                 ${lbl_getChatBotSections}
${lbl_AgentChat_pendedBusiness}               ${lbl_getChatBotSections}
${lbl_AgentChat_statements}                   ${lbl_getChatBotSections}

${btn_AgentChat_ClaimsQueue}         xpath://button[@aria-label="Message from bot  Claims"]
* Keywords
Select the AgentChat Check The Status Of Faxed Documentation option
    Click the AgentChat button    opt_AgentChat_CheckStatusOfFaxedDocumentation
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_PolicyholderInquiry

Select the AgentChat Claim Status option
    Click the AgentChat button    opt_AgentChat_CheckStatusOfClaim
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_claimStatus

Select the AgentChat Compensation RPM option
    Click the AgentChat button    opt_AgentChat_Compensation
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_compensation

Select the AgentChat Pended Business option
    Click the AgentChat button    opt_AgentChat_GetMyPendingBusiness
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_pendedBusiness
    
Select the AgentChat Statements option
    Click the AgentChat button    opt_AgentChat_Statements
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_statements
    
Select the AgentChat Wellness Reporting option
    Click the AgentChat button    opt_AgentChat_WellnessReporting

Select the AgentChat Chat With Aflac Customer Care Specialist option
    Click the AgentChat button    opt_AgentChat_ChatWithCCS

Select the AgentChat Contact Customer Service email link
    Click the AgentChat button    btn_AgentChat_emailCCSLink

Select the AgentChat Virtual Enrollment Tools option
    Sleep    1s
    Click the AgentChat button    opt_AgentChat_VirtualEnrollmentTools
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_enrollMessage

