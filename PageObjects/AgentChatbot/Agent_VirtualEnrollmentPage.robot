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
${opt_AgentChat_enroll_fillablePdf}         xpath://a[@name='pySimulatorChoice_Message.pyChoices(1)_7']
${opt_AgentChat_enroll_callCenter}          xpath://a[@name='pySimulatorChoice_Message.pyChoices(2)_7']
${opt_AgentChat_enroll_accountPages}        xpath://a[@name='pySimulatorChoice_Message.pyChoices(3)_7']
${opt_AgentChat_enroll_webex}               xpath://a[@name='pySimulatorChoice_Message.pyChoices(4)_7']
${opt_AgentChat_enroll_interviewStream}     xpath://a[@name='pySimulatorChoice_Message.pyChoices(5)_7']
${opt_AgentChat_enroll_returnToMainMenu}    xpath://a[@name='pySimulatorChoice_Message.pyChoices(6)_1']

${lbl_AgentChat_enrollMessage_txt}    Welcome to the Virtual enrollment solutions support. 
...    ${SPACE}Here you can access a variety of self-service resources that can assist in leveraging Aflac’s suite of virtual enrollment tools. 
...    ${SPACE}If you need additional support, please contact the Aflac Call Center at 855-411-4127 and select option 5.

## ----- Chat Bot Sections ----- ##
${lbl_AgentChat_enrollMessage}    ${lbl_getChatBotSections}

## ----- URL Redirects ----- ##
${url_AgentChat_enroll_fillablePdf}        https://sell.aflac.com/Selling%20Aflac/Traditional%20product%20enrollment/Alternate%20traditional%20enrollment%20options/Paper%20Fillable%20PDF%20and%20Adobe%20e-sign.aspx
# ${url_AgentChat_enroll_callCenter}         https://sell.aflac.com/Selling%20Aflac/Traditional%20product%20enrollment/Traditional%20enrollment%20on%20Everwell-1/Enrollment%20and%20Virtual%20Solutions.aspx#tabs-2
${url_AgentChat_enroll_callCenter}         https://sell.aflac.com/Selling%20Aflac/Traditional%20product%20enrollment/Traditional%20enrollment%20on%20Everwell/Enrollment%20and%20Virtual%20Solutions.aspx
${url_AgentChat_enroll_accountPages}       https://sell.aflac.com/Selling%20Aflac/Traditional%20product%20enrollment/Traditional%20enrollment%20on%20Everwell/Enrollment%20and%20Virtual%20Solutions.aspx#tabs-5
${url_AgentChat_enroll_webex}              https://sell.aflac.com/Selling%20Aflac/Traditional%20product%20enrollment/Traditional%20enrollment%20on%20Everwell/Enrollment%20and%20Virtual%20Solutions.aspx#tabs-1
${url_AgentChat_enroll_interviewStream}    https://sell.aflac.com/Selling%20Aflac/Traditional%20product%20enrollment/Traditional%20enrollment%20on%20Everwell/Enrollment%20and%20Virtual%20Solutions.aspx#tabs-3

* Keywords
Select the AgentChat Enrollment Fillable Pdf option
    Verify that the URL opens in a new browser tab    ${opt_AgentChat_enroll_fillablePdf}    ${url_AgentChat_enroll_fillablePdf}

Select the AgentChat Enrollment Virtual Call Center option
    Verify that the URL opens in a new browser tab    ${opt_AgentChat_enroll_callCenter}    ${url_AgentChat_enroll_callCenter}

Select the AgentChat Enrollment Account Landing Pages option
    Verify that the URL opens in a new browser tab    ${opt_AgentChat_enroll_accountPages}    ${url_AgentChat_enroll_accountPages}

Select the AgentChat Enrollment Webex option
    Verify that the URL opens in a new browser tab    ${opt_AgentChat_enroll_webex}    ${url_AgentChat_enroll_webex}

Select the AgentChat Enrollment Interview Stream option
    Verify that the URL opens in a new browser tab    ${opt_AgentChat_enroll_interviewStream}    ${url_AgentChat_enroll_interviewStream}    

Select the AgentChat Enrollment Return To Main Menu option
    Click the AgentChat button    opt_AgentChat_enroll_returnToMainMenu
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_welcomeMessageChat


