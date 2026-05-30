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
${gAddressDialogMessage}
${gEmailAddressDialogMessage}
${gEsignDocEmailAddressDialogMessage}
${gEsignDocEmailAddressSSNDialogMessage}

## Common Task Action Buttons
${btn_policyHolderChat_taskForm_sendForm}          xpath://button[contains(text(),'Send Form')]
${btn_policyHolderChat_taskForm_verifyAddress}     xpath://button[text()='Verify Address']
${btn_policyHolderChat_taskForm_firstContinue}     xpath:(//button[text()='Continue'])[1]
${btn_policyHolderChat_taskForm_secondContinue}    xpath:(//button[text()='Continue'])[2]
${btn_policyHolderChat_taskForm_thirdContinue}     xpath:(//button[text()='Continue'])[3]
${btn_policyHolderChat_taskForm_exit}              xpath://button[contains(@data-test-id,'2015021306370007121488')]
${fld_policyHolderChat_taskForm_exitComment}       xpath://textarea[contains(@data-test-id,'2016050409042601071560')]
${provide_policyHolderChat_cancelTaskComment}      Not Required
${btn_policyHolderChat_taskForm_exitClose}         xpath://button[contains(@data-test-id,'2015021306370007097332') and (text() = 'Close')]
${btn_policyHolderChat_taskForm_closeTask}         xpath://button[contains(@data-test-id,'20150216042226087912495') and contains(@title,'Confirm')]
${btn_policyHolderChat_taskForm_submit}            xpath://button[contains(@data-test-id,'2015021306370007097332') and contains(text(),'Submit')]
${btn_policyHolderChat_taskForm_secondSubmit}      xpath://button[contains(@data-test-id,'20200309165727048430241') and contains(text(),'Submit')]
${fld_policyHolderChat_taskForm_notes}             xpath://textarea[contains(@name,'$PpyWorkPage$ppyNote')]
${btn_policyHolderChat_taskForm_requestCode}       xpath://button[contains(@data-test-id,'202003160700090963104723')]
${btn_policyHolderChat_taskForm_verify}            xpath://button[contains(@data-test-id,'202003120553410387146725') and contains(text(),'Verify')]
${btn_policyHolderChat_taskForm_cancel}            xpath://button[contains(@id,'Close') and contains(text(),'Cancel')]
${btn_policyHolderChat_claim_sendClaimForm_submit}                    xpath:(//button[contains(text(),'Submit')])[2]

## Common Fields
${chkBox_policyHolderChat_taskAddressForm_VROD}        xpath://input[contains(@type,'checkbox') and contains(@name,'$PpyWorkPage$pVROD')]
${chkBox_policyHolderChat_taskAddressForm_ManualVROD}    xpath://input[contains(@type,'checkbox') and contains(@name,'$PpyWorkPage$pisVRODRequired')]
${fld_policyHolderChat_taskAddressForm_firstName}      xpath://input[contains(@type,'text') and contains(@name,'pFirstName')]
${fld_policyHolderChat_taskAddressForm_middleName}     xpath://input[contains(@type,'text') and contains(@name,'pInitial')]
${fld_policyHolderChat_taskAddressForm_lastName}       xpath://input[contains(@type,'text') and contains(@name,'pLastName')]
${radioBtn_policyHolderChat_policy_nameMisspelled}     xpath://label[contains(@class,'radioLabel') and contains(text(),'Name Misspelled')]
${radioBtn_policyHolderChat_policy_legalChange}        xpath://label[contains(@class,'radioLabel') and contains(text(),'Legal Name Change')]
${radioBtn_policyHolderChat_policy_priorChangeForm}    xpath://label[contains(text(),'Prior Change Form')]
${subject}    xpath://td[.='CustomerService@noreply.aflac.com']
${firstname}    xpath://table/tbody/tr[1]/td[2]
${pEmailFrom}    xpath://tr[2]/td[@class='dataValueRead']
${ptextArea}    xpath://tr/td[contains(text(),'PROBLEM')]//following-sibling::td[contains(text(),'Interaction ID of Incident')]
${pInquiryInitiator}    xpath://tr/td[contains(text(),'INQUIRY')]//following-sibling::td
${pInteractionID}    xpath://tr/td[contains(text(),'INTERACTION')]
${HistoryWindowAttachments}    xpath://div[@role='button' and text()='Attachments']
${HistoryWindowCorrespondence_customerInquiry}    xpath://div[@id='HARNESS_CONTENT']//a[contains(text(),'Customer Inquiry')]
${HistoryWindowCorrespondence_threatInquiry}    xpath://div[@id='HARNESS_CONTENT']//a[contains(text(),'Bomb Threat!')]
${HistoryWindowItemLabel}    xpath://td[contains(text(),'CSC Customer Inquiry')]
${ResearchInteractionTabTitle}    xpath://a[(@data-test-id= "2015041615024802351691")]
${header_PolicyHolder_Name}    xpath://span[@data-test-id='20150102041453078010253']
${header_PolicyHolder_SSN}    xpath://div[contains(@data-ui-meta,'SSN')]/span[@data-test-id='201705020725070683151764']
${header_Certificate_Status}      xpath://span[@data-test-id="202111051011150784336"][contains(text(),{})]
${header_Certificate_GroupNumber}      xpath://span[@data-test-id="20211105101115078247"][contains(text(),{})]
${btn_policyHolderChat_C360_C360Details_HideHeader}    xpath://button[@data-test-id='201705030200020076297158' and @title='Collapse header']
${btn_policyHolderChat_C360_C360Details_ShowHeader}    xpath://button[@data-test-id='201705030200020076297158' and @title='Expand header']
${tbl_policyHolderChat_summaryInfo_Certificates_solutionCentre}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-ContactHistoryCIF-CallCenterContactHistory')]//tr[@pl_index='rowNumber']//td//span
${fld_policyHolderChat_interactionNotes}    xpath://textarea[@data-test-id='202010230902270181412']

## Threat Inquiry Email ##
${fld_policyHolderChat_emailSubject}    xpath://td[contains(text(), 'Bomb Threat!')]

## State Files ##
${btn_policyHolderChat_StateFiles}    xpath://button[contains(@data-test-id,'2018080902461007071328') 
${lbl_policyHolderChat_StateFiles_LOB}    xpath://a[contains(@data-test-id, '202106140922080981978') and contains(text(),'Accident')]
${btn_policyHolderChat_StateFiles_close}    xpath://button[@id='container_close' and contains(@title,'Close modal')]


## Common Email / USPS Form
${radioBtn_policyHolderChat_taskAddressForm_emailInstructions}    xpath://label[contains(@class,'radioLabel') and contains(text(),'Email Instructions')]
${radioBtn_policyHolderChat_taskAddressForm_eSignDoc}             xpath://label[contains(@class,'radioLabel') and contains(text(),'eSign Document')]
${radioBtn_policyHolderChat_taskAddressForm_sendViaEmail}         xpath://label[contains(@class,'radioLabel') and contains(text(),'Send via Email')]
${radioBtn_policyHolderChat_taskAddressForm_sendViaUsps}          xpath://label[contains(@class,'radioLabel') and contains(text(),'Send via USPS')]
${fld_policyHolderChat_taskAddressForm_eSignEmailAddress}         xpath://input[@name='$PpyWorkPage$pContact$pEmailList$l1$ppyEmail']
${fld_policyHolderChat_taskAddressForm_ssn}                       xpath://input[contains(@data-test-id,'202007291204130517553')]
${fld_policyHolderChat_taskAddressForm_emailAddress}              xpath://input[contains(@name,'ppyEmailAddress')]
${fld_policyHolderChat_taskAddressForm_claimName}                 xpath://input[contains(@data-test-id,'20200414033105053111879')]
${fld_policyHolderChat_taskAddressForm_address1}                  xpath://input[contains(@data-test-id,'20200306184601059858676')]
${fld_policyHolderChat_taskAddressForm_address2}                  xpath://input[contains(@name,'$PpyWorkPage$pContact$pAddressList$l1$pAddressLine2')]
${fld_policyHolderChat_taskAddressForm_city}                      xpath://input[contains(@data-test-id,'20200306184601059860135')]
${dd_policyHolderChat_taskAddressForm_state}                      xpath://select[contains(@data-test-id,'20200306184601059961540')]
${dd_policyHolderChat_taskAddressForm_state_option}               xpath://select[contains(@data-test-id,'20200306184601059961540')]//option[@value='dropDownOption']
${dd_policyHolderChat_certificate_certificateClaim_certificateDropdown}          xpath://select[@data-test-id='20240917094233069261']
${dd_policyHolderChat_certificate_certificateClaim_certificateDropdown_option}          xpath://select[@data-test-id='20240917094233069261']//option[@value='dropDownOption']
${fld_policyHolderChat_taskAddressForm_zipCode}                   xpath://input[contains(@data-test-id,'20200306184601059962385')]
${chkBox_policyHolderChat_taskAddressForm_updateAfterSend}        xpath://input[contains(@class,'checkbox') and contains(@name,'UpdateReqADClaim')]
${chkBox_policyHolderChat_taskAddressForm_omegaLite}              xpath://input[contains(@class,'checkbox') and contains(@name,'OmegaLite')]
${chkBox_policyHolderChat_taskAddressForm_addressVerified}        xpath://input[contains(@data-test-id,'2020042612311103191871') and contains(@name,'EditAddress')]

## Common Dialog Content
${lbl_policyHolderChat_dialogContent_messageBar}               ${lbl_ccsMessageBar}
${lbl_policyHolderChat_dialogContent_notAvailable_txt}         No Denied Claims are available, Is there anything else I can help you with
${lbl_policyHolderChat_dialogContent_inProgress_txt}           Just a moment while I get this taken care of. 
${lbl_policyHolderChat_dialogContent_taskCanceled_txt}         Ok, I've canceled this action.. Is there anything else I can assist you with today?
${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}    Is there anything else I can assist you with?
${lbl_policyHolderChat_dialogContent_furtherHelp_txt}          Is there anything else I can help you with today?
${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}          ${lbl_wrapUpMessage}
${lbl_policyHolderChat_dialogContent_formsDelivered_txt}       How would you like the forms to be delivered, via email which you can then print out. Or by US Mail which can take up to a week for you to receive?
${lbl_policyHolderChat_dialogContent_uspsDelivery_txt}         Ok, the forms${SPACE} you requested will be mailed out in the next business day. Depending upon where you live, it may take up to 7 days for you to receive it.${SPACE} Is there anything else I can help you with today?
${lbl_policyHolderChat_dialogContent_emailInfo_txt}            What email address would you like me to use? 
${lbl_policyHolderChat_dialogContent_addressInfo_txt}          What is your mailing address?
${lbl_policyHolderChat_dialogContent_emailNotAvailable_txt}    Ok, I don't see an email address on file. What email address do you want the form to be sent to?

* Keywords
As a ${paveChat} ccs add a new ${taskOption} task from the ${taskSection} section
    Wait for pega masking icon to complete
    Run Keyword    Select the ${paveChat} CCS Add Task button
    Run Keyword    Select the ${taskOption} option from the ${taskSection} section
    Run Keyword    Select the ${paveChat} CCS Confirm Add Tasks button
    Run Keyword    Verify that the ${taskOption} task is displayed from the ${taskSection} section

Select the ${taskOption} option from the ${taskSection} section  
    Run Keyword    Click the PolicyHolderChat button    btn_policyHolderChat_addTask_${taskSection}_${taskOption}

Verify that the ${taskOption} task is displayed from the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${lbl_policyHolderChat_${taskSection}_${taskOption}_sectionHeader}     timeout=${xxlTimeout}

Verify that the ${taskOption} button is displayed under the addTask ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${btn_policyHolderChat_addTask_${taskSection}_${taskOption}}     timeout=${lTimeout}

Verify that the ${dialogMessage} dialog content is displayed on the ${taskOption} screen of the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    2s
    Wait Until Element Is Visible    ${lbl_policyHolderChat_${taskSection}_${taskOption}_dialogContent}    timeout=${xxlTimeout}
  
    Scroll button or label into view    ${lbl_policyHolderChat_${taskSection}_${taskOption}_dialogContent}
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${lbl_policyHolderChat_${taskSection}_${taskOption}_dialogContent}    timeout=${xxlTimeout}
    ${actualText}    Get Text    ${lbl_policyHolderChat_${taskSection}_${taskOption}_dialogContent}

    IF    '${dialogMessage}'=='userAddress'
        ${expectedText}    Set Variable    ${gAddressDialogMessage}
    ELSE IF    '${dialogMessage}'=='userEmailAddress'
        ${expectedText}    Set Variable    ${gEmailAddressDialogMessage}
    ELSE IF    '${dialogMessage}'=='userEsignDocEmailAddress'
        ${expectedText}    Set Variable    ${gEsignDocEmailAddressDialogMessage}
    ELSE IF    '${dialogMessage}'=='userEsignDocEmailAddressSSN'
        ${expectedText}    Set Variable    ${gEsignDocEmailAddressSSNDialogMessage}
    ELSE IF    '${dialogMessage}'=='cancelPolicyConfirmation'
        Get Todays Date
        ${validationText}    Convert To String    ${lbl_policyHolderChat_${taskSection}_${taskOption}_dialogContent_${dialogMessage}_txt}
        ${expected}    Replace String    ${validationText}    todays_date    ${todays_date}
        ${expectedText}    Set Variable    ${expected}  
    ELSE
        ${expectedText}    Set Variable    ${lbl_policyHolderChat_${taskSection}_${taskOption}_dialogContent_${dialogMessage}_txt}
    END
    Should Be Equal    ${actualText}    ${expectedText}

Click on the ${taskBtn} button on the ${taskOption} screen of the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    2s       
    Wait Until Element Is Visible    ${btn_policyHolderChat_${taskSection}_${taskOption}_${taskBtn}}    timeout=${xxxlTimeout} 
    Wait Until Element Is Enabled    ${btn_policyHolderChat_${taskSection}_${taskOption}_${taskBtn}}    timeout=${lTimeout}  
    Scroll button or label into view    ${btn_policyHolderChat_${taskSection}_${taskOption}_${taskBtn}}
    Wait for pega masking icon to complete
    Click the PolicyHolderChat button    btn_policyHolderChat_${taskSection}_${taskOption}_${taskBtn}  

Update the claimant address fields
    [Arguments]    ${ClaimAddress1}    ${ClaimAddress2}    ${ClaimCity}    ${ClaimStateCode}    ${ClaimZipCode}
    Wait for pega masking icon to complete
    Sleep    5s
    Wait Until Element Is Visible    ${fld_policyHolderChat_claim_address1}    timeout=${xxlTimeout}
    Clear Element Text    ${fld_policyHolderChat_claim_address1}
    Sleep    2s
    Input Text    ${fld_policyHolderChat_claim_address1}    ${ClaimAddress1}    clear=True
    Press Keys    None    TAB
    Sleep    2s
    Input Text    ${fld_policyHolderChat_claim_address2}    ${ClaimAddress2}    clear=True
    Press Keys    None    TAB
    Sleep    2s
    Clear Element Text    ${fld_policyHolderChat_claim_city}
    Sleep    2s
    Input Text    ${fld_policyHolderChat_claim_city}    ${ClaimCity}    clear=True
    Press Keys    None    TAB
    Sleep    2s    
    Click Element    ${dd_policyHolderChat_claim_state}
    ${selectStateOption}=    Replace String    ${dd_policyHolderChat_claim_state_option}    dropDownOption    ${ClaimStateCode}
    Wait Until Element Is Visible    ${selectStateOption}    timeout=${xxlTimeout}
    Click Element    ${selectStateOption}
    Clear Element Text    ${fld_policyHolderChat_claim_zipCode}
    Sleep    2s
    Input Text    ${fld_policyHolderChat_claim_zipCode}    ${ClaimZipCode}    clear=True
    Press Keys    None    TAB
    Sleep    2s
    ${setAddressMsg}    Convert To String    Ok, I currently have ${ClaimAddress1}, ${ClaimAddress2}, ${ClaimCity}${SPACE}, ${ClaimStateCode}${SPACE}, ${ClaimZipCode} on the file. Is that the right address?
    Set Suite Variable    ${gAddressDialogMessage}    ${setAddressMsg}

Update the claimant email field to '${ClaimEmailAddress}' on the ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    2s
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_emailAddress}    ${ClaimEmailAddress}    clear=True
    Press Keys    None    TAB
    Sleep    3s
    ${setEmailMsg}    Convert To String    Ok, I currently have ${ClaimEmailAddress} on the file. Is that the right email${SPACE} address?
    Set Suite Variable    ${gEmailAddressDialogMessage}    ${setEmailMsg}

Update the claimant emails field to '${ClaimEmailAddress}' on the ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    2s
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_emailAddress}    ${ClaimEmailAddress}    clear=True
    Press Keys    None    TAB
    Sleep    3s
    ${setEmailMsg}    Convert To String    Ok, Do you also want to update this email address ${ClaimEmailAddress} on the file?
    Set Suite Variable    ${gEmailAddressDialogMessage}    ${setEmailMsg}

The ccs enters a comment to complete the cancel task process in the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_exitComment}    timeout=${mTimeout}    
    Input Text    ${fld_policyHolderChat_${taskSection}_exitComment}    ${provide_policyHolderChat_cancelTaskComment}    clear=True
    Sleep    2s

Enter '${inputText}' in the ${textBox} field on ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    1s
    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}}    timeout=${mTimeout}  
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}}    ${inputText}    clear=True
    Sleep    2s
    Press Keys    None    TAB
    Sleep    2s
    IF    '${textBox}'=='eSignEmailAddress'
        ${setEdocEmailMsg}    Convert To String    Ok, I currently have ${inputText} on the file. Is that the right email address ? Please provide me with a 4 digit code (such as the last 4 digits of your Social Security Number)${SPACE} for security purposes.${SPACE} You'll be asked again to provide this code when you open the document.
        Set Suite Variable    ${gEsignDocEmailAddressDialogMessage}    ${setEdocEmailMsg}
    ELSE IF    '${textBox}'=='eSignEmailAddressSSN'
        ${setEdocEmailMsgSSN}    Convert To String             Ok, I currently have ${inputText} on the file. Is that the right email ${SPACE}address? For security purposes, please tell me the last 4 digits of your Social Security Number. This will be set as your PIN and you'll be asked again to provide this when you open the document.     
        Set Suite Variable    ${gEsignDocEmailAddressSSNDialogMessage}    ${setEdocEmailMsgSSN}
    END

Select the ${communicationOption} radio button in the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${radioBtn_policyHolderChat_${taskSection}_${communicationOption}}    timeout=${xlTimeout}
    Scroll button or label into view    ${radioBtn_policyHolderChat_${taskSection}_${communicationOption}}
    Wait for pega masking icon to complete
    Click the PolicyHolderChat button    radioBtn_policyHolderChat_${taskSection}_${communicationOption}

Select the ${checkBox} checkbox on the ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${chkBox_policyHolderChat_${taskSection}_${taskOption}_${checkBox}}    timeout=${xxlTimeout}   
    Scroll button or label into view    ${chkBox_policyHolderChat_${taskSection}_${taskOption}_${checkBox}}
    Wait for pega masking icon to complete
    Click the PolicyHolderChat button    chkBox_policyHolderChat_${taskSection}_${taskOption}_${checkBox}
    Press Keys    None    TAB

Select ${todayDate} in the ${textBox} field on ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}}    timeout=${mTimeout}
    Click the PolicyHolderChat button    fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}
    Click the PolicyHolderChat button    fld_policyHolderChat_${taskSection}_${taskOption}_${todayDate}
    Sleep    1s

Select row ${rowNumber} in the ${policyTable} table on the ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    ${getTableRow}=    Replace String    ${tbl_policyHolderChat_${taskSection}_${taskOption}_${policyTable}}    rowNumber    ${rowNumber}
    Wait until element is Visible    ${getTableRow}    timeout=${xxlTimeout}
    Sleep    1s
    Double Click Element    ${getTableRow}
    Sleep    2s
    &{browserAlias}=    Get Browser Aliases
    FOR    ${alias}    IN    @{browserAlias}
        Run Keyword IF    'CcsPortal' in '''${alias}'''    Run Keyword    If displayed close the Unauthorised Security Request modal popup after selecting '${getTableRow}'
    END

Select '${DropDownSelection}' from the ${dropdownField} field on the ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    1s
    Wait Until Element Is Visible    ${dd_policyHolderChat_${taskSection}_${taskOption}_${dropdownField}}    timeout=${lTimeout}
    Run keyword    Click the policyHolderChat button    dd_policyHolderChat_${taskSection}_${taskOption}_${dropdownField}
    Sleep     2s
    ${dropDownOpt}=    Replace String    ${dd_policyHolderChat_${taskSection}_${taskOption}_${dropDownField}_option}    dropDownOption    ${DropDownSelection}
    Wait Until Element Is Visible    ${dropDownOpt}    timeout=${xxlTimeout}
    Click Element    ${dropDownOpt}
    Sleep     1s
    #Wait for pega masking icon to complete
    #Press Keys    None    TAB    

Select '${subTab}' from the subTab on the ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${tab_policyHolderChat_${taskSection}_${taskOption}_${subTab}}    timeout=${mTimeout}
    Click the PolicyHolderChat button    tab_policyHolderChat_${taskSection}_${taskOption}_${subTab}
    Sleep    2s

Select the '${fileToUpload}' file to upload on the ${taskOption} screen of the ${taskSection} section
    ${getFileToUpload}=    Set variable    ${EXECDIR}${/}PolicyHolderChannel${/}TestData${/}Customer360${/}${taskSection}${/}AddTasks${/}${fileToUpload}.txt
    Wait for pega masking icon to complete
    Sleep    2s
    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_modalFileDropZone}    timeout=${sTimeout}
    Choose File    ${btn_policyHolderChat_${taskSection}_${taskOption}_modalSelectFiles}    ${getFileToUpload}
    
Wrap up the PolicyHolderChat ${taskOption} task for the ${taskSection} phone call interaction
    Select the PolicyHolderChat CCS wrap up chat button
    Run Keyword    Verify that the claimWrapUp dialog content is displayed on the ${taskOption} screen of the ${taskSection} section
    Select the PolicyHolderChat CCS wrap up submit button
    Wait for pega masking icon to complete
    Log out from the PolicyHolderChat ccs portal
    Close browser

Verify ${taskOption} Email Payload
    Click on the help button on the ${taskOption} screen of the general section
    Wait Until Element Is Visible    ${btn_policyHolderChat_general_${taskOption}_historyandattachments}    timeout=${mTimeout} 
    Wait Until Element Is Enabled    ${btn_policyHolderChat_general_${taskOption}_historyandattachments}    timeout=${mTimeout}  
    Click Element    ${btn_policyHolderChat_general_${taskOption}_historyandattachments} 
    Switch Window  locator=NEW
    Sleep    2s
    Click Element    ${HistoryWindowAttachments}
    sleep    2s
    Click Element    ${HistoryWindowCorrespondence_${taskOption}}
    #sleep    2s
    #Click Element    ${HistoryWindowItemLabel}
    Sleep    3s
    ${handles}=    Get Window Handles
    Switch Window  ${handles}[2]

    IF    '${taskOption}' == 'customerInquiry'
        Verify customerInquiry Email content
    ELSE IF    '${taskOption}' == 'threatInquiry'
        Verify threatInquiry Email content 
    END
    

Verify threatInquiry Email content
    Wait Until Element is Visible    ${fld_policyHolderChat_emailSubject}     timeout=${mTimeout}
    ${lEmailSubject}=    Get text    ${fld_policyHolderChat_emailSubject}
    Should contain    ${lEmailSubject}    	Bomb Threat
    Switch Window  locator=main
    select frame    PegaGadget1Ifr

Verify customerInquiry Email content
    Wait Until Element is Visible    ${pEmailFrom}
    ${lEmailFromAddress}=    Get text    ${pEmailFrom}
    Should be Equal    ${lEmailFromAddress}    	CustomerService@noreply.aflac.com
    Select the ShowIFrame iFrame
    Wait Until Element is Visible    ${pInquiryInitiator}    timeout=${mTimeout}
    ${lInquiryInitiator}=    Get text    ${pInquiryInitiator}
    ${lInquiryInitiator}    Replace String    ${lInquiryInitiator}    ${SPACE}    ${EMPTY}
    Should be Equal    ${lInquiryInitiator}    	PolicyHolder
    Wait until Element is Visible    ${pInteractionID}
    ${lInteractionID}=    Get text     ${pInteractionID}
    ${lInteractionID}    Replace String    ${lInteractionID}    ${SPACE}    ${EMPTY}
    Should be Equal    ${lInteractionID}    INTERACTIONID
    Wait until Element is Visible    ${ptextArea}    timeout=${mTimeout}
    ${ltextarea}=    Get text    ${ptextarea}
    ${ltextarea}    Replace String    ${ltextarea}    ${SPACE}    ${EMPTY}
    Should Contain Any    ${ltextarea}    InteractionIDofIncident
    Switch Window  locator=main
    select frame    PegaGadget1Ifr
    Click on the closeTask button on the privacyIncident screen of the general section

Verify the State Files pop up appears and shows the correct information
    Click the PolicyHolderChat button    btn_policyHolderChat_StateFiles
    Wait Until Element is Visible    ${lbl_policyHolderChat_StateFiles_LOB}    timeout=${mTimeout}
    Click the PolicyHolderChat button    btn_policyHolderChat_StateFiles_close

Verify Email address on the updateEmailAddress screen in the general section
    Click the PolicyHolderChat button    btn_policyHolderChat_emailAddressVerified

Verify PhoneNumber on the updatePhoneNumber screen in the general section
    Click the PolicyHolderChat button    btn_policyHolderChat_phoneNumberVerified

Verify HomeAddress on the updateHomeAddress screen in the general section
    Click the PolicyHolderChat button    btn_policyHolderChat_HomeAddressVerified

Verify Research Interaction Tab Title is ${ResearchTabTitle}
    Unselect Frame
    ${expectedText}=    Set variable    ${ResearchTabTitle}
    Wait Until Element Is Visible    ${ResearchInteractionTabTitle}    timeout=${mTimeout}
    ${actualText}    Get Text    ${ResearchInteractionTabTitle}
    Should contain    ${actualText}    ${expectedText} 

Verify Header details section ${header} in C360 screen
    IF    '${header}'=='visible'
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${header_PolicyHolder_Name}    timeout=${mTimeout}
    Wait Until Element Is Visible    ${header_PolicyHolder_SSN}    timeout=${mTimeout}
    Sleep    2s    
    ELSE IF    '${header}'=='notVisible'
    Wait for pega masking icon to complete
    Wait Until Element Is Not Visible    ${header_PolicyHolder_Name}    timeout=${mTimeout}
    Wait Until Element Is Not Visible    ${header_PolicyHolder_SSN}    timeout=${mTimeout}
    Sleep    2s
    END

Verify the Certificate header details ${header} with status ${certificatestatus} and GroupNumber ${certificategroupnumber}
    IF    '${header}'=='visible'
    Wait for pega masking icon to complete
    ${expectedText1}=    Set variable    ${certificatestatus}
    ${actualText1}    format string    ${header_Certificate_Status}    ${certificatestatus}
    Wait Until Element Is Visible    ${actualText1}    timeout=${lTimeout}
    Sleep    2s 
    Should contain    ${actualText1}    ${expectedText1}
    ${expectedText2}=    Set variable    ${certificategroupnumber}
    ${actualText2}    format string    ${header_Certificate_GroupNumber}    ${certificategroupnumber}
    Wait Until Element Is Visible    ${actualText2}    timeout=${lTimeout}
    Sleep    2s 
    Should contain    ${actualText2}    ${expectedText2}
    ELSE IF    '${header}'=='notVisible'
    Wait for pega masking icon to complete
    Wait Until Element Is Not Visible    ${header_Certificate_Status}    timeout=${mTimeout}
    Wait Until Element Is Not Visible    ${header_Certificate_GroupNumber}    timeout=${mTimeout}
    Sleep    2s
    END


Verify the ${taskConfirmation} taskConfirmation message is displayed on the ${taskOption} screen of the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${lbl_policyHolderChat_${taskSection}_${taskConfirmation}_dialogContent_taskConfirmation_txt}    timeout=${sTimeout}
    ${actualText}    Get Text     ${lbl_policyHolderChat_${taskSection}_${taskConfirmation}_dialogContent_taskConfirmation_txt}
    ${expectedText}    Set Variable    ${lbl_policyHolderChat_${taskSection}_${taskConfirmation}_dialogContent_txt}
    Should Be Equal    ${actualText}    ${expectedText}

Enter Text in Interaction Notes
    [Arguments]    ${iNotes}
    Wait Until Element Is Visible    ${fld_policyHolderChat_interactionNotes}    timeout=${sTimeout}
    Input Text    ${fld_policyHolderChat_interactionNotes}    ${iNotes}
    Select the PolicyHolderChat CCS wrap up submit button

Verify that the ${taskOption} submit message is displayed in the ${taskSection} section
    Wait for Chatbot System loading icon to complete
    Sleep    1s
    ${${taskOption}Submitted}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${lbl_policyHolderChat_${taskSection}_${taskOption}_successSubmitMessage}     timeout=${sTimeout}
    IF    '${${taskOption}Submitted}'=='False'
        Fail    The ${taskOption} form was not submitted.
    END