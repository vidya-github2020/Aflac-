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
${btn_liveChat_txt}          Chat With Us
${lbl_liveChatHeader_txt}    Chat with Aflac

${lbl_AgentChat_welcomeMessageChat_txt}    Welcome to the Aflac Associate Virtual Assistant.

${lbl_AgentChat_welcomeMessageChatOOO_txt}    Hello {USERNAME}.  Welcome to the Aflac Associate Virtual Assistant. My goal is to assist you in finding what you are looking for.
...  ${SPACE}We are currently outside of business hours (Monday-Friday 8:00 AM - 8:00 PM EST) and our Chat Customer Care Specialists are unavailable. There are a number of things that I can assist you with, including many frequently asked requests.
...  ${SPACE}Please select the type of assistance you need from the choices below.
...  ${SPACE}At any time, type Exit in the text box to return to the Main Menu.

${lbl_AgentChat_welcomeMessageNoCookie_txt}    Welcome to the Aflac Associate Virtual Assistant. My goal is to assist you in finding what you are looking for or connect you to an Aflac Customer Care Specialist.
...  ${SPACE}Please select the type of assistance you need from the choices below.
...  ${SPACE}At any time, type Exit in the text box to return to the Main Menu.

${lbl_AgentChat_welcomeMessageNoCookieOOO_txt}    Welcome to the Aflac Associate Virtual Assistant. My goal is to assist you in finding what you are looking for.
...  ${SPACE}We are currently outside of business hours (Monday-Friday 8:00 AM - 8:00 PM EST) and our Chat Customer Care Specialists are unavailable. There are a number of things that I can assist you with, including many frequently asked requests.
...  ${SPACE}Please select the type of assistance you need from the choices below.
...  ${SPACE}At any time, type Exit in the text box to return to the Main Menu.

## ----- CCS Chats ----- ##
${lbl_AgentChat_mainMenuMessage_txt}        You are at the Main Menu. Please select the type of assistance you need from the choices below.
${lbl_AgentChat_mainMenuMessageOOO_txt}     You are at the Main Menu. Please select the type of assistance you need from the choices below.
${lbl_AgentChat_complianceMessage_txt}      All chats are monitored for quality assurance purposes.
...  This is a secure chat session. Any sensitive information sent through this interaction will only be displayed to
...  the Custome Care Specialists you are currently chatting with and masked in our system after the chat has ended.
${lbl_AgentChat_ccsHelpMessage_txt}          To better assist you, please select the type of support you're seeking. If you need help with claims, feel free to call us directly at 1-800-462-3522. We're here to ensure you get the assistance you need!
${lbl_AgentChat_theRepsBusy_txt}             All of our representatives are currently busy. Please try again later.
${lbl_AgentChat_everwellRepsBusy_txt}        All of our representatives are currently busy. Please call us at 1-(855)-411-4427
${lbl_AgentChat_claimsRepsBusy_txt}          All of our representatives are currently busy. Please call us at 1-(855)-411-4427
${lbl_AgentChat_connectingToCcsQueue_txt}    Please wait while we connect you to an agent.
${lbl_AgentChat_provideFirstLastName_txt}    Please provide your first and last name.
${lbl_AgentChat_provideWritingNumber_txt}    Thanks Test Name Added. Please provide your writing number.
${lbl_AgentChat_areYouAssisting}             Are you assisting today?
${lbl_AgentChat_generalHelpQuery}            In a few words, let us know how we can help you today.
${lbl_AgentChat_ccsFurtherAssistance_txt}    Would you like to chat with an Aflac Customer Care Specialist who may be able to provide further assistance?
${lbl_AgentChat_furtherAssistance_txt}       Do you require further assistance?
${lbl_AgentChat_ccsOtherAssistance_txt}      Is there something else I can assist you with today?
${lbl_AgentChat_ccsAssistance_txt}           Would you like to chat with an Aflac Customer Care Specialist who will be able to assist you further?
${lbl_AgentChat_provideRequiredInfo_txt}     Click below to provide the required info...
${lbl_AgentChat_claimStatus_txt}             We’d be happy to help you. Please click here to review the status of claims.
${lbl_AgentChat_compensation_txt}            We’d be happy to help you. Please click here for your compensation needs.
${lbl_AgentChat_pendedBusiness_txt}          We’d be happy to help you. Please click here to review your pended business.
${lbl_AgentChat_statements_txt}              We’d be happy to help you. Please click here to review your statements.

${provide_AgentChat_agentName}             Test Name Added
${provide_AgentChat_agentWritingNumber}    AB123
${provide_AgentChat_agentComment}          I have a general query
${provide_AgentChat_agentSurveyComment}    Completed the AgentChat post chat survey
${provide_AgentChat_agentSSNNumber}        1234
${provide_AgentChat_reason}                Testing functionality

## ----- Exit Chats ----- ##
${lbl_AgentChat_exitMessage_txt}    To provide the fax details we have received, we need you to answer a few questions.
...  At any point during the process if you do not wish to continue, please type exit
${lbl_AgentChat_exitChat_txt}    This chat has ended. Thank you for contacting Aflac. You may now close your browser.

## ----- Fax Form ----- ##
${lbl_AgentChat_PolicyholderInquiry_txt}    	In order to assist you with this query we will require confirmation
...  of the policyholder information, do you have the fax number that was used to submit the documentation?
${lbl_AgentChat_firstName_txt}    What is your first name?
${lbl_AgentChat_lastName_txt}    What is your last name?
${radioBtn_lbl_AgentChat_SSN_txt}    SSN
${radioBtn_lbl_AgentChat_policyNumber_txt}    Policy Number
${lbl_AgentChat_SSN_txt}    Please provide the last 4 digits of your social security number
${lbl_AgentChat_policyNumber_txt}    Policy Number
${lbl_AgentChat_policyNumberInvalid_txt}    Please enter a valid Policy Number
#${lbl_AgentChat_faxNumber_txt}    Fax Number
${lbl_AgentChat_faxNumber_txt}    Please provide the fax number (digits only) used to submit the documentation.
...  (For example: if the fax number was +123-456-7890, then please enter: 1234567890)
${lbl_AgentChat_faxBlankFields_txt}    This field cannot be blank.
${lbl_AgentChat_faxInvalidFirstName_txt}    Please enter a valid first name
${lbl_AgentChat_faxInvalidLastName_txt}    Please enter a valid last name
${lbl_AgentChat_faxFieldLengthSSN_txt}    The field should be at least 4 characters long.
${lbl_AgentChat_faxFieldLengthFax_txt}    The field should be at least 10 characters long.
${lbl_AgentChat_faxInvalidSSN_txt}    Please enter the last 4 digits of your Social Security Number
${lbl_AgentChat_faxInvalidPolicyNumber_txt}    Unfortunately, we have been unable to verify the policyholder using the information provided; please check and try again
${lbl_AgentChat_faxInvalidFax_txt}    Please enter a valid Fax Number
${lbl_AgentChat_faxApiUnavaliable_txt}    Sorry we have been unable to complete the request please try again later
${lbl_AgentChat_faxInvalidDataSent_txt}    We have been unable to validate the policyholder information
${lbl_AgentChat_faxNoMatchFound_txt}    We have been unable to locate any faxes for the number submitted.
${lbl_AgentChat_faxMatchFound_txt}    Below are the Fax Details we have recently received:
${lbl_AgentChat_faxCancelForm_txt}    This process has been cancelled.

## ----- Wellness Report Form ----- ##
${lbl_AgentChat_wellRpt_txt}    Please follow the steps below to export the wellness report.
...       1: Click here to open CIS. This will
...           open the CIS page in a new
...           window; the steps below will
...           remain open within the chat
...           window to allow you to refer
...           back as needed.
...      2: On the Account Profile page,
...          enter the Payroll Account
...          Number and click the 'Search'
...          button.
...      3: From the search results page
...          click on the Account Name.
...      4: Select Wellness/PVB/HSB History.
...      5: Select the Years (up to a max of
...          3yr) and Claim Status.
...      6: Click export to PDF.

* Keywords

