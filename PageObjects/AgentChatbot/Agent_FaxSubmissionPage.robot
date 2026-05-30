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
${lbl_AgentChat_firstName}               xpath://span[contains(@data-testid,'text_message_csr' )and contains(text(),'What is your first name')]       
${fld_AgentChat_firstName}               xpath://textarea[@data-testid='type_a_message'] 
${lbl_AgentChat_firstName_validation}    xpath://span[@data-testid='text_message_csr' and contains(text(),'Please enter a valid first name')]
${lbl_AgentChat_lastName}               xpath://span[contains(@data-testid,'text_message_csr' )and contains(text(),'What is your last name')] 
${fld_AgentChat_lastName}               ${fld_AgentChat_firstName}
${lbl_AgentChat_lastName_validation}    xpath://span[@data-testid='text_message_csr' and contains(text(),'Please enter a valid last name')]

${opt_AgentChat_SSN}                      xpath://button[@data-testid='SSN']
${fld_AgentChat_SSN}                      ${fld_AgentChat_firstName}  
${radioBtn_lbl_AgentChat_SSN}             xpath://div[contains(@data-test-id,'20200430112833026832705')]//label[contains(@for,'SSN')]
${radioBtn_AgentChat_policyNumber}        xpath://div[contains(@data-test-id,'20200430112833026832705')]//label[contains(@for,'Policy Number')]
${radioBtn_lbl_AgentChat_policyNumber}    xpath://div[contains(@data-test-id,'20200430112833026832705')]//label[contains(@for,'Policy Number')]

${lbl_AgentChat_SSN}                      xpath://span[contains(@data-testid,'text_message_csr') and contains(text(),'Please provide the last 4 digits')]                        
${lbl_AgentChat_SSN_validation}         xpath://span[@data-testid='text_message_csr' and contains(text(),'Social Security Number')]

${lbl_AgentChat_policyNumber}               xpath://label[contains(@class,'field-caption dataLabelForWrite') and contains(@for,'PolicyNumber')]
${fld_AgentChat_policyNumber}               ${fld_AgentChat_firstName}  
${lbl_AgentChat_policyNumber_validation}    xpath://span[@data-testid='text_message_csr' and contains(text(),'Please enter a valid Policy Number')]
${opt_AgentChat_policyNumber}               xpath://button[@data-testid='Policy Number'] 

${lbl_AgentChat_faxNumber}               xpath://span[contains(@data-testid,'text_message_csr') and contains(text(),' if the fax number was +123-456-7890, then please enter: 1234567890')]
${fld_AgentChat_faxNumber}                ${fld_AgentChat_firstName}
${lbl_AgentChat_faxNumber_validation}    xpath://span[@data-testid='text_message_csr' and contains(text(),'Please enter a valid Fax Number')]

${btn_AgentChat_completeForm}           xpath://button[contains(@data-test-id,'201812041435470749372') and contains(text(),'Complete Form')]
${btn_AgentChat_CloseForm}              xpath://img[contains(@data-ctl,'Icon') and contains(@name,'AFLWorkFormWrapper_PreviewConsole')]
${btn_AgentChat_CancelForm}             xpath://div[contains(@class,'pzbtn-mid') and contains(text(),'Cancel')]
${btn_AgentChat_SubmitForm}             xpath://div[contains(@class,'pzbtn-mid') and contains(text(),'Submit')]
${lbl_AgentChat_reviewForm}             xpath:(//div[contains(@string_type,'label') and contains(text(),'Review')])[last()]
${btn_AgentChat_cancelReviewForm}       xpath://button[contains(@class,'Simple pzhc pzbutton') and contains(text(),'Cancel')]
${lbl_AgentChat_faxReviewFormFields}    xpath://div[contains(@class,'field-item dataValueRead')]//span

## ----- Chat Bot Sections ----- ##
${lbl_AgentChat_exitChat}               ${lbl_getChatBotSections}
${lbl_AgentChat_faxMessage}             ${lbl_getChatBotSections}
${lbl_AgentChat_exitMessage}            ${lbl_getChatBotSections}
${lbl_AgentChat_PolicyholderInquiry}    ${lbl_getChatBotSections}
${lbl_AgentChat_faxApiUnavaliable}      ${lbl_getChatBotSections}
${lbl_AgentChat_faxInvalidDataSent}     ${lbl_getChatBotSections}
${lbl_AgentChat_faxNoMatchFound}        ${lbl_getChatBotSections}
${lbl_AgentChat_faxMatchFound}          ${lbl_getChatBotSections}
${lbl_AgentChat_faxCancelForm}          ${lbl_getChatBotSections}
${lbl_AgentChat_provideRequiredInfo}    ${lbl_getChatBotSections}


* Keywords
The AgentChat agent selects the complete fax form button
    Click the AgentChat button    btn_AgentChat_completeForm
    Wait until element is visible    ${fld_AgentChat_firstName}    timeout=${mTimeout}

The AgentChat agent selects the cancel fax form button
    Click the AgentChat button    btn_AgentChat_CancelForm
    Verify that the AgentChat lbl_AgentChat_faxCancelForm message is displayed when the AgentChat fax form has been submitted

The AgentChat agent selects the close fax form button
    Click the AgentChat button    btn_AgentChat_CloseForm
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_provideRequiredInfo

The AgentChat agent selects the submit fax form button
    Handle the AgentChat fax alert on form submission

The AgentChat agent selects the review fax form button
    Click the AgentChat button    lbl_AgentChat_reviewForm

The AgentChat agent selects the cancel review fax form button
    Click the AgentChat button    btn_AgentChat_cancelReviewForm

The AgentChat agent selects the fax number tooltip
    Click the AgentChat button    tooltip_AgentChat_FaxNumber
    Wait Until Element Is Visible    ${tooltip_AgentChat_FaxNumber}    timeout=${mTimeout}

The AgentChat agent begins a fax inquiry
    Select the AgentChat Check The Status Of Faxed Documentation option

The AgentChat agent navigates to the fax form
    The AgentChat agent begins a fax inquiry
    Do you have the fax number that was used to submit the documentation in the AgentChat    Yes
   #Verify that the AgentChat live chat message is displayed lbl_AgentChat_provideRequiredInfo

The AgentChat agent opens the fax form
    The AgentChat agent navigates to the fax form
    #The AgentChat agent selects the complete fax form button

The AgentChat agent submits the fax form
    [Arguments]    ${field}    ${faxSubmitValidation}
    Log to console    Waiting for fax form to be submitted
    The AgentChat agent selects the submit fax form button
    Check if the AgentChat fax form has been submitted    ${field}    ${faxSubmitValidation}
    Run Keyword    Verify that the AgentChat ${faxSubmitValidation} message is displayed when the AgentChat fax form has been submitted

Check if the AgentChat fax form has been submitted
    [Arguments]    ${field}    ${faxSubmitValidation}
    Wait for Chatbot System loading icon to complete
    ${present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${lbl_AgentChat_${field}_validation}    timeout=${sTimeout}
    IF    '${present}'=='True'
        The AgentChat agent submits the fax form    ${field}    ${faxSubmitValidation}
    ELSE
        Do Nothing
    END

The AgentChat agent closes the review fax form and verifies that the ${faxSubmitValidation} label is displayed
    The AgentChat agent selects the cancel review fax form button
    Run Keyword    Verify that the AgentChat live chat message is displayed lbl_AgentChat_${faxSubmitValidation}

The AgentChat agent selects the ${faxRadioBtn} radio button in the fax form
    Click the AgentChat button    radioBtn_AgentChat_${faxRadioBtn}
    Wait until element is visible    ${lbl_AgentChat_${faxRadioBtn}}    timeout=${mTimeout}

The AgentChat agent selects the ${optionSelected} option for CCS further assistance
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the require further assistance option in the AgentChat    ${optionSelected}
    ELSE
        The agent returns to the AgentChat live chat main menu
    END

Verify the correct AgentChat fax form fields are displayed when the ${radioSelected} radio button is selected
    Verify that the label text is displayed    lbl_AgentChat_firstName
    Verify that the label text is displayed    lbl_AgentChat_lastName
    Verify that the label text is displayed    lbl_AgentChat_SSN
    #IF    'opt_AgentChat_SSN'=='SSN'
        #Verify that the label text is displayed    radioBtn_lbl_AgentChat_SSN
        #Verify that the label text is displayed    lbl_AgentChat_SSN
    #ELSE
     #   Verify that the label text is displayed    radioBtn_lbl_AgentChat_policyNumber
     #   Verify that the label text is displayed    lbl_AgentChat_policyNumber
    #END
    Verify that the label text is displayed    lbl_AgentChat_faxNumber
    

Verify that the AgentChat ${fieldName} field validation text is ${fieldMessage}
    Wait for pega masking icon to complete
    Sleep    1s
    ${expectedText}=    Set variable    ${lbl_AgentChat_${fieldMessage}_txt}

    Wait Until Element Is Visible    ${lbl_AgentChat_${fieldName}_validation}    timeout=${lTimeout}
    ${actualText}    Get Text    ${lbl_AgentChat_${fieldName}_validation}
    Should contain    ${actualText}    ${expectedText}

The AgentChat agent verifies that the fax number tootip is displayed
    The AgentChat agent selects the fax number tooltip
    ${actualText}=    Get Element Attribute    ${tooltip_AgentChat_FaxNumber}    data-click
    Should contain    ${actualText}    ${tooltip_AgentChat_FaxNumber_txt}
    

Verify that the AgentChat ${fieldName} message is displayed when the AgentChat fax form has been submitted
    Wait for Chatbot System loading icon to complete
    Run Keyword    Verify that the AgentChat live chat message is displayed ${fieldName}

The AgentChat agent verifies that the fax review form contains ${textSubmitted}
    Sleep    1s
    Wait until element is visible    ${btn_AgentChat_cancelReviewForm}    timeout=${mTimeout}
    ${getElements}    Get WebElements    ${lbl_AgentChat_faxReviewFormFields}
    FOR    ${ele}  IN  @{getElements}
        ${validationText}    Convert To String    textSubmitted
        ${expectedText}    Set Variable    ${${validationText}}
        ${actualText}    Get Text    ${ele}
        Exit For Loop IF    '''${actualText}'''=='''${expectedText}'''
    END

The AgentChat agent submits the fax form and verifies the ${fieldName} field validation message is ${fieldMessage}
    #The AgentChat agent selects the submit fax form button
    Select the AgentChat Send Message button
    Run Keyword    Verify that the AgentChat ${fieldName} field validation text is ${fieldMessage}

The AgentChat agent enters the details in the fax form when the SSN is selected
    [Arguments]    ${fname}    ${lname}    ${ssn}    ${faxnumber}
    Input Text    ${fld_AgentChat_firstName}    ${fname}    clear=True
    Sleep    1s  
    Select the AgentChat Send Message button
    Sleep     1s   
    Input Text    ${fld_AgentChat_lastName}    ${lname}    clear=True
    Select the AgentChat Send Message button
    Click the AgentChat button    opt_AgentChat_SSN
    Sleep     2s
    Input Text    ${fld_AgentChat_SSN}    ${SSN}    clear=True
    Select the AgentChat Send Message button
    Sleep    2s    
    Input Text    ${fld_AgentChat_faxNumber}    ${faxnumber}    clear=True
    Select the AgentChat Send Message button

The AgentChat agent enters the details in the fax form when the policyNumber is selected
    [Arguments]    ${fname}    ${lname}    ${policyNumber}    ${faxnumber}
    Input Text    ${fld_AgentChat_firstName}    ${fname}    clear=True
    Sleep    1s  
    Select the AgentChat Send Message button
    Sleep     1s   
    Wait until element is visible    ${fld_AgentChat_lastName}    timeout=${mTimeout}
    Input Text    ${fld_AgentChat_lastName}    ${lname}    clear=True
    Select the AgentChat Send Message button
    Click the AgentChat button    opt_AgentChat_policyNumber
    Sleep     2s
    Input Text    ${fld_AgentChat_PolicyNumber}    ${policyNumber}    clear=True
    Select the AgentChat Send Message button
    Sleep    2s    
    Wait until element is visible    ${fld_AgentChat_faxNumber}    timeout=${mTimeout}
    Input Text    ${fld_AgentChat_faxNumber}    ${faxnumber}    clear=True
    Select the AgentChat Send Message button

The AgentChat agent enters the ${field} in the fax form 
    [Arguments]    ${fname}  ${lname}    ${ssn}   ${policyNumber}    ${faxnumber}
    IF    '${field}'=='firstName'
     Input Text    ${fld_AgentChat_${field}}    ${fname}    clear=True
     Sleep    2s  
     Select the AgentChat Send Message button
     ELSE IF    '${field}'=='lastName'
     Wait until element is visible    ${fld_AgentChat_${field}}    timeout=${mTimeout} 
     Input Text    ${fld_AgentChat_${field}}    ${fname}    clear=True
     Select the AgentChat Send Message button
     Input Text    ${fld_AgentChat_${field}}    ${lname}    clear=True
     Select the AgentChat Send Message button
     ELSE IF    '${field}'=='SSN'
     Wait until element is visible    ${fld_AgentChat_${field}}    timeout=${mTimeout}    
     Input Text    ${fld_AgentChat_${field}}    ${fname}    clear=True
     Select the AgentChat Send Message button
     Wait until element is visible    ${fld_AgentChat_${field}}    timeout=${mTimeout}    
     Input Text    ${fld_AgentChat_${field}}    ${lname}    clear=True
     Select the AgentChat Send Message button
     Click the AgentChat button    opt_AgentChat_SSN
     Wait until element is visible    ${fld_AgentChat_${field}}    timeout=${mTimeout}
     Input Text    ${fld_AgentChat_${field}}    ${SSN}    clear=True
     Select the AgentChat Send Message button
     ELSE IF    '${field}'=='faxnumber'
     Wait until element is visible    ${fld_AgentChat_${field}}    timeout=${mTimeout}    
     Input Text    ${fld_AgentChat_${field}}    ${fname}    clear=True
     Select the AgentChat Send Message button
     Input Text    ${fld_AgentChat_${field}}    ${lname}    clear=True
     Select the AgentChat Send Message button
     Wait until element is visible    ${fld_AgentChat_${field}}    timeout=${mTimeout}
     Click the AgentChat button    opt_AgentChat_SSN
     Input Text    ${fld_AgentChat_${field}}    ${SSN}    clear=True 
     Select the AgentChat Send Message button
     Wait until element is visible    ${fld_AgentChat_${field}}    timeout=${mTimeout}  
     Input Text    ${fld_AgentChat_${field}}    ${faxnumber}    clear=True
     Select the AgentChat Send Message button
     ELSE IF    '${field}'=='policyNumber'
    Wait until element is visible    ${fld_AgentChat_${field}}    timeout=${mTimeout}    
     Input Text    ${fld_AgentChat_${field}}    ${fname}    clear=True
     Select the AgentChat Send Message button     
     Input Text    ${fld_AgentChat_${field}}    ${lname}    clear=True
     Select the AgentChat Send Message button
     Click the AgentChat button    opt_AgentChat_policyNumber
     Wait until element is visible    ${fld_AgentChat_${field}}    timeout=${mTimeout}
     Input Text    ${fld_AgentChat_${field}}    ${policyNumber}    clear=True
     Select the AgentChat Send Message button
    END
    
The AgentChat agent submits a valid fax form with ssn data
    IF    '${gEnvironment}'=='SysT'
        The AgentChat agent enters the details in the fax form    ${fld_AgentChat_SSN}    DESEAN    EBERL    1880    3123768809
    ELSE
        The AgentChat agent enters the details in the fax form    ${fld_AgentChat_SSN}    LEITZ    RUEBEN    1247    3123768809
    END

The AgentChat agent submits a valid fax form with policy number data
    IF    '${gEnvironment}'=='SysT'
        The AgentChat agent enters the details in the fax form    ${fld_AgentChat_SSN}    DESEAN    EBERL    B2696809    3123768809
    ELSE
        The AgentChat agent enters the details in the fax form    ${fld_AgentChat_SSN}    CLIFTON    KOONCE    B6030897    3123768809
    END

Handle the AgentChat fax alert on form submission
    Handle the AgentChat fax alert
    Click the AgentChat button    btn_AgentChat_SubmitForm
    Handle the AgentChat fax alert

Handle the AgentChat fax alert    
    Sleep    1s
    ${present}=    Run Keyword And Return Status    Alert Should Not Be Present
    IF    '${present}'=='True'
        Do Nothing
    ELSE
        Run Keyword And Ignore Error    Handle Alert
        Sleep    1s
    END

Do you have the fax number that was used to submit the documentation in the AgentChat
    [Arguments]    ${optYesNo}
    Run Keyword    Select the AgentChat ${optYesNo} option
    IF    '${optYesNo}'=='Yes'
        Do Nothing
        #Verify that the AgentChat live chat message is displayed lbl_AgentChat_provideRequiredInfo
    ELSE
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_ccsFurtherAssistance
    END

Decline connection to the general queue after completing fax request steps
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the AgentChat Something Else option
        Check if the agent live chat cookie has loaded
        Select an AgentChat are you assisting option
        The AgentChat agent provides a help comment
        Select the AgentChat Connect To An Aflac Representative option
        The AgentChat CCS declines the live chat alert
        The AgentChat agent ends the live chat session and rejects the post chat survey
        Exit the AgentChat workflow
        Select the require further assistance option in the AgentChat    Yes
    ELSE
        Do Nothing
    END

