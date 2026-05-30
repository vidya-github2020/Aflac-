* Settings
Documentation    The keywords in this file are intended for all test suites
...              contained in any of the feature folders in this root directory
Resource    ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource    ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
#Resource    ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentEmail${/}AgentEmailKeywords.robot
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

* Variables
${fld_agentChat_general_exitComment}    ${fld_agentChat_taskForm_exitComment}

${gAddressDialogMessage}
${gEmailAddressDialogMessage}
${gEsignDocEmailAddressDialogMessage}
${gEsignDocEmailAddressSSNDialogMessage}
${DM_Agent_sso_txtBox_UserName}        xpath://input[contains(@id,'identifierInput')]
${DM_Agent_sso_btn_Next}               xpath://button[contains(@title,'Next')]
${DM_Agent_sso_txtBox_Password}        xpath://input[contains(@id,'password')]
${DM_Agent_sso_btn_Login}              xpath://span[contains(@id,'signOnButtonSpan')] 

## Dialog Content
${lbl_agentChat_dialogContent_messageBar}               ${lbl_ccsMessageBar}
${lbl_agentChat_dialogContent_notAvailable_txt}         No Denied Claims are available, Is there anything else I can help you with
${lbl_agentChat_dialogContent_inProgress_txt}           Just a moment while I get this taken care of.
${lbl_agentChat_dialogContent_taskCanceled_txt}         Ok, I've canceled this action.. Is there anything else I can assist you with today?
${lbl_agentChat_dialogContent_furtherAssistance_txt}    Is there anything else I can assist you with?
${lbl_agentChat_dialogContent_furtherHelp_txt}          Is there anything else I can help you with today?
${lbl_agentChat_dialogContent_claimWrapUp_txt}          ${lbl_wrapUpMessage}
${lbl_agentChat_dialogContent_formsDelivered_txt}       How would you like the forms to be delivered, via email which you can then print out. Or by US Mail which can take up to a week for you to receive?
${lbl_agentChat_dialogContent_uspsDelivery_txt}         Ok, the forms${SPACE} you requested will be mailed out in the next business day. Depending upon where you live, it may take up to 7 days for you to receive it.${SPACE} Is there anything else I can help you with today?
${lbl_agentChat_dialogContent_emailInfo_txt}            What email address would you like me to use?
${lbl_agentChat_dialogContent_addressInfo_txt}          What is your mailing address?
${lbl_agentChat_dialogContent_emailNotAvailable_txt}    Ok, I don't see an email address on file. What email address do you want the form to be sent to?
${lbl_agentChat_general_SendBeeline_dialogContent_BeelineSubmit_txt}         Ok, I have submitted a request to have this reviewed. Is there anything else I can help you with today?
${lbl_agentChat_general_SendBeeline_BeelineSent_txt}    A request to review this New Business beeline has been sent.
${lbl_agentChat_general_SendBeeline_ConversionBeelineSent_txt}    A request to review this Conversion beeline has been sent.
${lbl_agentChat_general_SendBeeline_ContractingBeelineSent_txt}     A request to review this Contracting beeline has been sent.
${lbl_agentChat_general_SendBeeline_CompensationBeelineSent_txt}    A request to review this Compensation beeline has been sent.

## ---   Privacy Incident   --- ##
${lbl_agentChat_general_customerInquiry_dialogContent}                        ${lbl_agentChat_dialogContent_messageBar}
${lbl_agentChat_general_customerInquiry_dialogContent_reviewprivacyIncident_txt}      Ok. let's get started. Let me review some of the data about your Customer Inquiry.
${lbl_agentChat_general_customerInquiry_dialogContent_assistance_txt}         ${lbl_agentChat_dialogContent_furtherAssistance_txt}
${lbl_agentChat_general_customerInquiry_dialogContent_canceledTask_txt}       ${lbl_agentChat_dialogContent_taskCanceled_txt}
${lbl_agentChat_general_customerInquiry_dialogContent_claimWrapUp_txt}        ${lbl_agentChat_dialogContent_claimWrapUp_txt}


## Common Task Action Buttons
${btn_agentChat_taskForm_sendForm}          xpath://button[contains(text(),'Send Form')]
${btn_agentChat_taskForm_verifyAddress}     xpath://button[text()='Verify Address']
${btn_agentChat_taskForm_firstContinue}     xpath:(//button[text()='Continue'])[1]
${btn_agentChat_taskForm_secondContinue}    xpath:(//button[text()='Continue'])[2]
${btn_agentChat_taskForm_thirdContinue}     xpath:(//button[text()='Continue'])[3]
${btn_agentChat_taskForm_exit}              xpath://button[contains(@data-test-id,'2015021306370007121488')]
${fld_agentChat_taskForm_exitComment}       xpath://textarea[contains(@data-test-id,'2016050409042601071560')]
${provide_agentChat_cancelTaskComment}      Not Required
${btn_agentChat_taskForm_exitClose}         xpath://button[contains(@data-test-id,'2015021306370007097332') and (text() = 'Close')]
${btn_agentChat_taskForm_closeTask}         xpath://button[contains(@data-test-id,'20150216042226087912495') and contains(@title,'Confirm')]
${btn_agentChat_taskForm_submit}            xpath://button[contains(@data-test-id,'2015021306370007097332') and contains(text(),'Submit')]
${btn_agentChat_taskForm_secondSubmit}      xpath://button[contains(@data-test-id,'20200309165727048430241') and contains(text(),'Submit')]
${fld_agentChat_taskForm_notes}             xpath://textarea[contains(@name,'$PpyWorkPage$ppyNote')]
${btn_agentChat_taskForm_requestCode}       xpath://button[contains(@data-test-id,'202003160700090963104723')]
${btn_agentChat_taskForm_verify}            xpath://button[contains(@data-test-id,'202003120553410387146725') and contains(text(),'Verify')]

## TASK -- Privacy Incident
${btn_agentChat_addTask_general_customerInquiry}                  xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Customer Inquiry')]
${lbl_agentChat_general_customerInquiry_sectionHeader}                xpath://h2[contains(text(),'Customer Inquiry')]
${dd_agentChat_general_customerInquiry_routingDestination}            xpath://select[contains(@data-test-id,'202112200132380615298')]
${dd_agentChat_general_customerInquiry_routingDestination_option}     xpath://select[contains(@data-test-id,'202112200132380615298')]//option[text()='dropDownOption']
${dd_agentChat_general_customerInquiry_reason}                        xpath://select[contains(@data-test-id,'202112200138120734779')]
${dd_agentChat_general_customerInquiry_reason_option}                 xpath://select[contains(@data-test-id,'202112200138120734779')]//option[text()='dropDownOption']
${dd_agentChat_general_customerInquiry_policy}                        xpath://select[contains(@data-test-id,'2019100514161107003637') and contains(@id,'d2962ce1')]
${dd_agentChat_general_customerInquiry_policy_option}                 xpath://select[contains(@data-test-id,'2019100514161107003637')]//option[text()='dropDownOption']
${fld_agentChat_general_customerInquiry_situationSolution}            xpath://textarea[contains(@data-test-id,'202112200151130386614')]
${fld_agentChat_general_customerInquiry_incidentId}                   xpath://input[contains(@data-test-id,"202210191537440865155") and contains(@id,"22e2b07a")]
${btn_agentChat_general_customerInquiry_submit}                       ${btn_agentChat_taskForm_submit}
${btn_agentChat_general_customerInquiry_closeTask}                    ${btn_agentChat_taskForm_closeTask}
${btn_agentChat_general_customerInquiry_exitTask}                     xpath://button[contains(@data-test-id,'202111221740340424139') and text()='Exit']
${btn_agentChat_general_customerInquiry_closeOnExitTask}              ${btn_agentChat_taskForm_exitClose}

## TASK -- Update Language Preferences
${btn_agentChat_addTask_general_UpdateLanguagePreferences}            xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Update Language Preferences')]
${lbl_agentChat_general_UpdateLanguagePreferences_sectionHeader}      xpath://h2[contains(text(),'Update Language Preferences')]
${chkBox_agentChat_general_UpdateLanguagePreferences_English}         xpath://input[contains(@type,'checkbox') and contains(@data-test-id,'202402261540290768478')]
${chkBox_agentChat_general_UpdateLanguagePreferences_French}          xpath://input[contains(@type,'checkbox') and contains(@data-test-id,'202402261540290770735')]
${chkBox_agentChat_general_UpdateLanguagePreferences_Korean}          xpath://input[contains(@type,'checkbox') and contains(@data-test-id,'202402261540290771456')]
${chkBox_agentChat_general_UpdateLanguagePreferences_Mandarin}        xpath://input[contains(@type,'checkbox') and contains(@data-test-id,'202402261540290772180')]
${chkBox_agentChat_general_UpdateLanguagePreferences_Spanish}         xpath://input[contains(@type,'checkbox') and contains(@data-test-id,'202402261540290773285')]
${chkBox_agentChat_general_UpdateLanguagePreferences_Vietnamese}      xpath://input[contains(@type,'checkbox') and contains(@data-test-id,'202402261540290775452')]
${btn_agentChat_general_UpdateLanguagePreferences_submit}             xpath://button[contains(@data-test-id,'20200309165727048430241') and contains(text(),'Submit')]
${btn_agentChat_general_UpdateLanguagePreferences_closeTask}          ${btn_agentChat_taskForm_closeTask}
${lbl_agentChat_general_UpdateLanguagePreferences_dialogContent_updateLanguageEnglish_txt}    Your language preference has been updated to ENGLISH. If you have any more changes in the future, please feel free to let us know. Is there anything else I can assist you with today?
${lbl_agentChat_general_UpdateLanguagePreferences_dialogContent_updateLanguageEnglishSpanish_txt}    Your language preference has been updated to ENGLISH & SPANISH. If you have any more changes in the future, please feel free to let us know. Is there anything else I can assist you with today?
${lbl_agentChat_general_UpdateLanguagePreferences_dialogContent}                        ${lbl_agentChat_dialogContent_messageBar}


## TASK -- Update Phone Number
${btn_agentChat_addTask_general_UpdatePhoneNumber}                                             xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Update Phone Number')]
${lbl_agentChat_general_UpdatePhoneNumber_sectionHeader}                                       xpath://h2[contains(text(),'Update Phone Number Agent')]
${btn_agentChat_phoneNumberVerified}                                                           xpath:(//label[contains(text(),'Yes')])[last()]
${fld_agentChat_general_UpdatePhoneNumber_mainPhone}                                           xpath:(//input[contains(@data-test-id,'202403010548450825551')])[1]
${fld_agentChat_general_UpdatePhoneNumber_homePhone}                                           xpath:(//input[contains(@data-test-id,'202403010548450825551')])[2]
${fld_agentChat_general_UpdatePhoneNumber_fax}                                                 xpath:(//input[contains(@data-test-id,'202403010548450825551')])[3]
${btn_agentChat_general_UpdatePhoneNumber_Reset}                                               xpath://button[contains(@data-test-id,'20200309165727048430241')]
${btn_agentChat_general_UpdatePhoneNumber_submit}                                              ${btn_agentChat_taskForm_submit}
${btn_agentChat_general_UpdatePhoneNumber_continue}                                            xpath://button[contains(@data-test-id,'20200309165727048430241') and contains(text(),'Continue')]
${lbl_agentChat_general_updatePhoneNumber_dialogContent}                                       ${lbl_agentChat_dialogContent_messageBar}
${lbl_agentChat_general_updatePhoneNumber_dialogContent_phoneNumberUpdatedConfirmation_txt}    Policy contact phone number changed successfully
${btn_agentChat_general_UpdatePhoneNumber_closeTask}                                           xpath://button[contains(@data-test-id,'20150216042226087912495') and text()='Close']
${btn_agentChat_general_UpdatePhoneNumber_exitTask}                                            xpath://button[contains(@data-test-id,'202111221740340424139') and text()='Exit']
${chkBox_agentChat_general_UpdatePhoneNumber_updateManually}                                   xpath://input[contains(@type,'checkbox') and contains(@name,'UpdateManually')]
${lbl_agentChat_general_UpdatePhoneNumber_dialogContent_updatePhoneCompleted_txt}              Your Main contact number has been successfully updated to (789) 007-0000. Your Home contact number has been successfully updated to (789) 007-8988. Your FAX number has been successfully updated to (123) 321-1234. If you need to make any further changes or have other preferences, please let us know. Is there anything else I can assist you with today?
${lbl_agentChat_general_UpdatePhoneNumber_dialogContent_updatePhoneCompletedSecondTime_txt}    Your Main contact number has been successfully updated to (789) 007-1111. Your Home contact number has been successfully updated to (789) 007-2222. Your FAX number has been successfully updated to (123) 321-3333. If you need to make any further changes or have other preferences, please let us know. Is there anything else I can assist you with today?
${lbl_agentChat_general_UpdatePhoneNumber_dialogContent}                                       ${lbl_agentChat_dialogContent_messageBar}

## TASK -- Update Account Phone Number
${btn_agentChat_addTask_general_UpdateAccountPhoneNumber}                                             xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Update Phone Number')]
${lbl_agentChat_general_UpdateAccountPhoneNumber_sectionHeader}                                       xpath://h2[contains(text(),'Update Phone Number')]
${fld_agentChat_general_UpdateAccountPhoneNumber_PhoneNumber}                                         xpath://input[contains(@data-test-id,'202203031053450971973')]
${fld_agentChat_general_UpdateAccountPhoneNumber_FaxNumber}                                           xpath://input[contains(@data-test-id,'202203030750590308410')]
${lbl_agentChat_general_updateAccountPhoneNumber_dialogContent_AccountphoneNumberUpdatedConfirmation_txt}    Phone Number updated successfully
${lbl_agentChat_general_UpdateAccountPhoneNumber_dialogContent_updateAccountPhoneCompleted_txt}       Your phone number has been updated. You should be receiving an email from Aflac confirming this change. Is there anything else I can help you with?
${lbl_agentChat_general_updateAccountPhoneNumber_dialogContent}                                       ${lbl_agentChat_dialogContent_messageBar}

## TASK -- Update Account Email Address
${btn_agentChat_addTask_general_UpdateAccountEmailAddress}                                                     xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Update Email Address')]
${lbl_agentChat_general_UpdateAccountEmailAddress_sectionHeader}                                               xpath://h2[contains(text(),'Update Email Address')]
${fld_agentChat_general_UpdateAccountEmailAddress_EmailAddress}                                                xpath://input[contains(@data-test-id,'202107191600290038118')]
${btn_agentChat_EmailVerified}                                                                                 xpath:(//label[contains(text(),'Yes')])[last()]
${lbl_agentChat_general_updateAccountEmailAddress_dialogContent_AccountEmailAddressUpdatedConfirmation_txt}    Email Address updated successfully
${lbl_agentChat_general_UpdateAccountEmailAddress_dialogContent_updateAccountEmailCompleted_txt}               Your email address has been updated. You should be receiving an email from Aflac confirming this change. Is there anything else I can assist you with?
${lbl_agentChat_general_updateAccountEmailAddress_dialogContent}                                               ${lbl_agentChat_dialogContent_messageBar}
${btn_agentChat_general_updateAccountEmailAddress_submit}                                                      ${btn_agentChat_taskForm_submit}
${btn_agentChat_general_UpdateAccountEmailAddress_closeTask}                                                   xpath://button[contains(@data-test-id,'20150216042226087912495') and text()='Close']

##  TASK -- Update Account Billing/Location Address]
${btn_agentChat_addTask_general_UpdateAccountBillingAddress}                                                   xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Update Billing/Location Address')]
${lbl_agentChat_general_UpdateAccountBillingAddress_sectionHeader}                                             xpath://h2[contains(text(),'Update Billing/Location Address')]
${fld_agentChat_general_UpdateAccountBillingAddress_BillingAddress1}                                           xpath:(//input[contains(@data-test-id,'20200306184601059962385')])[1]
${fld_agentChat_general_UpdateAccountBillingAddress_BillingAddress2}                                           xpath:(//input[contains(@data-test-id,'20200306184601059962385')])[2]
${fld_agentChat_general_UpdateAccountBillingAddress_LocationAddress1}                                          xpath:(//input[contains(@data-test-id,'20200306184601059962385')])[3]
${fld_agentChat_general_UpdateAccountBillingAddress_LocationAddress2}                                          xpath:(//input[contains(@data-test-id,'20200306184601059962385')])[4]
${fld_agentChat_general_UpdateAccountBillingAddress_BillingCity}                                               xpath:(//input[contains(@data-test-id,'20200306184601059860135')])[1]
${dd_agentChat_general_UpdateAccountBillingAddress_BillingState}                                               xpath://select[@data-test-id='20200306184601059961540' and @id="0dfb1801"]
${dd_agentChat_general_UpdateAccountBillingAddress_BillingState_option}                                        xpath://select[@data-test-id='20200306184601059961540' and @id="0dfb1801"]//option[text()='dropDownOption']
${fld_agentChat_general_UpdateAccountBillingAddress_BillingZip}                                                xpath:(//input[contains(@data-test-id,'20200306184601059860135')])[2]
${fld_agentChat_general_UpdateAccountBillingAddress_LocationCity}                                              xpath:(//input[contains(@data-test-id,'20200306184601059962385')])[3]
${dd_agentChat_general_UpdateAccountBillingAddress_LocationState}                                              xpath://input[contains(@data-test-id,'20200306184601059962385')]
${fld_agentChat_general_UpdateAccountBillingAddress_LocationZip}                                               xpath:(//input[contains(@data-test-id,'20200306184601059962385')])[4]
${btn_agentChat_general_updateAccountBillingAddress_submit}                                                    ${btn_agentChat_taskForm_submit}
${btn_agentChat_general_UpdateAccountBillingAddress_closeTask}                                                   xpath://button[contains(@data-test-id,'20150216042226087912495') and text()='Close']
${lbl_agentChat_general_updateAccountBillingAddress_dialogContent_AccountBillingAddressUpdatedConfirmation_txt}    Address updated successfully
${lbl_agentChat_general_UpdateAccountBillingAddress_dialogContent_updateAccountBillingAddressCompleted_txt}               Your address has been updated. is there anything else I can assist you with?
${lbl_agentChat_general_updateAccountBillingAddress_dialogContent}                                               ${lbl_agentChat_dialogContent_messageBar}
${btn_agentChat_AddressVerified}                                                                               xpath://input[contains(@data-test-id,'2020030915031408655149')]
${btn_agentChat_ManualVROD}                                                                                    //input[contains(@data-test-id,'20200309161200099764190')]


## TASK -- Reset Agent IVR Pin
${btn_agentChat_addTask_general_ResetAgentIVRPin}                                             xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Reset Agent IVR Pin')]
${lbl_agentChat_general_ResetAgentIVRPin_sectionHeader}                                       xpath://h2[contains(text(),'Reset IVR Pin')]
${btn_agentChat_general_ResetAgentIVRPin_reset}                                               xpath://button[contains(@data-test-id,'20200309165727048430241') and contains(text(),'Reset IVR Pin')]
${btn_agentChat_general_ResetAgentIVRPin_cancel}                                               xpath://button[contains(@data-test-id,'20200309165727048430241') and contains(text(),'Cancel')]
${btn_agentChat_general_ResetAgentIVRPin_Submit}                                               xpath://button[contains(@data-test-id,'2015021306370007097332') and contains(text(),'Submit')]
${btn_agentChat_general_ResetAgentIVRPin_closetask}                                           xpath://button[contains(@data-test-id,'20150216042226087912495') and contains(text(),'Close')]
${lbl_agentChat_general_ResetAgentIVRPin_dialogContent_ResetPinCompleted_txt}                 We have successfully reset your IVR Pin. You will receive an email with the new Pin shortly, allowing you to verify in our IVR system.
${lbl_agentChat_general_ResetAgentIVRPin_dialogContent_AgentUnregistered_txt}                 I'm Sorry. You are not Registered for IVR.
${lbl_agentChat_general_ResetAgentIVRPin_dialogContent}                                       ${lbl_agentChat_dialogContent_messageBar}
${chkBox_agentChat_general_ResetAgentIVRPin_ManualVROD}                                       xpath://input[contains(@data-test-id,'202208260636120812683')]

## TASK -- SendBeeline
${btn_agentchat_addTask_general_SendBeeline}                      xpath://a[@data-test-id='2014123005242607302524' and contains(text(),'Send Beeline')]
${lbl_agentChat_general_SendBeeline_sectionHeader}                xpath://h2[contains(text(),'Send Beeline')]
${dd_agentChat_general_SendBeeline_routingDestination}            xpath://select[contains(@data-test-id,'202112200132380615298')]
${dd_agentChat_general_SendBeeline_routingDestination_option}     xpath://select[contains(@data-test-id,'202112200132380615298')]//option[text()='dropDownOption']
${dd_agentChat_general_SendBeeline_reason}                        xpath://select[contains(@data-test-id,'202112200138120734779')]
${dd_agentChat_general_SendBeeline_reason_option}                 xpath://select[contains(@data-test-id,'202112200138120734779')]//option[text()='dropDownOption']
${btn_agentChat_general_SendBeeline_Balance}                      xpath:(//input[@data-test-id='202111231233010760722'])[1]
${btn_agentChat_general_SendBeeline_Inquiry}                      xpath:(//input[@data-test-id='202111231233010760722'])[2]
${btn_agentChat_general_SendBeeline_Rcode}                        xpath:(//input[@data-test-id='202111231233010760722'])[3]
${btn_agentChat_general_SendBeeline_submit}                       ${btn_agentChat_taskForm_submit}
${btn_agentChat_general_SendBeeline_closeTask}                    ${btn_agentChat_taskForm_closeTask}
${btn_agentChat_general_SendBeeline_exitTask}                     xpath://button[contains(@data-test-id,'202111221740340424139') and text()='Exit']
${btn_agentChat_general_SendBeeline_closeOnExitTask}              ${btn_agentChat_taskForm_exitClose}
${lbl_agentChat_general_SendBeeline_dialogContent}                ${lbl_agentChat_dialogContent_messageBar}
${lbl_agentChat_general_SendBeeline_ConfirmationMsg}              xpath://div[@data-test-id='2015031106000209843748']
${btn_agentChat_general_SendBeeline_help}                         xpath://button[@data-test-id='20141215070415002520549']
${btn_agentChat_general_SendBeeline_historyandattachments}        xpath://span[contains(text(),'History and attachments')]
${HistoryAndCaseNarrative}                                        xpath://div[contains(text(),'History and Case')]
${trackingComments}                                               xpath:(//span[@data-test-id="20141208131812007951172"])[3]

* Keywords
Open the AgentChat chatbot
    Open the live chat page
    Enter AgentChat Login Details
    Initiate the AgentChat live chat session

Enter AgentChat Login Details
    Sleep    1s
    Wait Until Element Is Visible    ${DM_Agent_sso_txtBox_UserName}
    Input Text    ${DM_Agent_sso_txtBox_UserName}    ${DM_Agent_ccs_uName}    clear=True
    Click Element     ${DM_Agent_sso_btn_Next} 
    Wait Until Element Is Visible    ${DM_Agent_sso_txtBox_Password}
    Input Password    ${DM_Agent_sso_txtBox_Password}    ${DM_Agent_ccs_password}    clear=True
    Press Keys    None    TAB
    Wait Until Element Is Visible    ${DM_Agent_sso_btn_Login}     timeout=${xxlTimeout}
    Click Element    ${DM_Agent_sso_btn_Login}
    Sleep    1s
    Wait for page loading icon to complete

Login as an AgentChat ${ccsUser} CCS user
    Open the CCS portal Pega_SignIn_URL
    Run Keyword    Log into the AgentChat CCS portal with ${ccsUser}

## --- Email Form --- ##
Open the AgentChat agent email form portal
    #Open Browser    browser=${gBrowser}    url=${AgentEmailWebForm_URL}    alias=EmailPortal
    Open Chrome Browser to Page  URL=${AgentEmailWebForm_URL}   alias=EmailPortal
    Maximize Browser Window
    Delete All Cookies
    Log to console    Waiting for email portal to load
    Sleep    5s
    IF    '${gEnvironment}'=='SysT'
        Enter sso details and login as an agent
        Log to console    Waiting for sso user portal to load
        Sleep    5s
        Check to see if the modal splash is displayed on the home screen
        Select the AgentChat Contact Customer Service email link
    END

Select the ${checkBox} checkbox on the ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${chkBox_agentChat_${taskSection}_${taskOption}_${checkBox}}    timeout=${xxlTimeout}
    Scroll button or label into view    ${chkBox_agentChat_${taskSection}_${taskOption}_${checkBox}}
    Wait for pega masking icon to complete
    Click the agentChat button    chkBox_agentChat_${taskSection}_${taskOption}_${checkBox}
    Press Keys    None    TAB

Log in with the AgentChat email sso CCS account ${ccsUname}
    Run Keyword    Enter sso details and login as an ${ccsUname}
    Go To    ${sso_Pega_SignIn_URL}
    Log to console    Waiting for sso ccs portal to load
    Wait Until Element Is Visible    ${AgentChat_CcsHomeTab}     timeout=${xxlTimeout}
    Wait for page loading icon to complete
    Sleep    7s
    The AgentChat CCS closes the email case

The AgentChat CCS closes the email case
    ${status}=    Run Keyword And Return Status    Select the PegaGadget0Ifr iFrame
    IF    '${status}'=='False'
        Select the PegaGadget1Ifr iFrame
        The AgentChat CCS selects the email form close button
        Sleep    5s
    END

As a ${paveChat} ccs add a new ${taskOption} task from the ${taskSection} section
    Wait for pega masking icon to complete
    Run Keyword    Select the ${paveChat} CCS Add Task button
    Run Keyword    Select the ${taskOption} option from the ${taskSection} section
    Run Keyword    Select the ${paveChat} CCS Confirm Add Tasks button
    Run Keyword    Verify that the ${taskOption} task is displayed from the ${taskSection} section

Select the ${taskOption} option from the ${taskSection} section
    Run Keyword    Click the AgentChat button    btn_agentchat_addTask_${taskSection}_${taskOption}

Verify that the ${taskOption} task is displayed from the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${lbl_agentChat_${taskSection}_${taskOption}_sectionHeader}     timeout=${mTimeout}

Select '${DropDownSelection}' from the ${dropdownField} field on the ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${dd_agentChat_${taskSection}_${taskOption}_${dropdownField}}    timeout=${mTimeout}
    Run keyword    Click the agentChat button    dd_agentChat_${taskSection}_${taskOption}_${dropdownField}
    Sleep     2s
    ${dropDownOpt}=    Replace String    ${dd_agentChat_${taskSection}_${taskOption}_${dropDownField}_option}    dropDownOption    ${DropDownSelection}
    Wait Until Element Is Visible    ${dropDownOpt}    timeout=${xxlTimeout}
    Click Element    ${dropDownOpt}
    Sleep     1s

Enter '${inputText}' in the ${textBox} field on ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    1s
    Wait Until Element Is Visible    ${fld_agentChat_${taskSection}_${taskOption}_${textBox}}    timeout=${mTimeout}
    Input Text    ${fld_agentChat_${taskSection}_${taskOption}_${textBox}}    ${inputText}    clear=True
    Sleep    2s
    Press Keys    None    TAB
    IF    '${textBox}'=='eSignEmailAddress'
        ${setEdocEmailMsg}    Convert To String    Ok, I currently have ${inputText} on the file. Is that the right email address ? Please provide me with a 4 digit code (such as the last 4 digits of your Social Security Number)${SPACE} for security purposes.${SPACE} You'll be asked again to provide this code when you open the document.
        Set Suite Variable    ${gEsignDocEmailAddressDialogMessage}    ${setEdocEmailMsg}
    ELSE IF    '${textBox}'=='eSignEmailAddressSSN'
        ${setEdocEmailMsgSSN}    Convert To String             Ok, I currently have ${inputText} on the file. Is that the right email ${SPACE}address? For security purposes, please tell me the last 4 digits of your Social Security Number. This will be set as your PIN and you'll be asked again to provide this when you open the document.
        Set Suite Variable    ${gEsignDocEmailAddressSSNDialogMessage}    ${setEdocEmailMsgSSN}
    END

Enter '${inputText}' into the ${textBox} field on ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_agentChat_${taskSection}_${taskOption}_${textBox}}    timeout=${mTimeout}
    Clear Element Text    ${fld_agentChat_${taskSection}_${taskOption}_${textBox}}
    sleep    2s
    Input Text    ${fld_agentChat_${taskSection}_${taskOption}_${textBox}}    ${inputText}    clear=True
    Sleep    2s
    Press Keys    None    TAB
    Sleep    2s

Click on the ${taskBtn} button on the ${taskOption} screen of the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${btn_agentChat_${taskSection}_${taskOption}_${taskBtn}}    timeout=${xxlTimeout}
    Wait Until Element Is Enabled    ${btn_agentChat_${taskSection}_${taskOption}_${taskBtn}}    timeout=${mTimeout}
    Scroll button or label into view    ${btn_agentChat_${taskSection}_${taskOption}_${taskBtn}}
    Wait for pega masking icon to complete
    Click the agentChat button    btn_agentChat_${taskSection}_${taskOption}_${taskBtn}
    sleep    2s

The ccs enters a comment to complete the cancel task process in the ${taskSection} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_agentChat_${taskSection}_exitComment}    timeout=${mTimeout}
    Input Text    ${fld_agentChat_${taskSection}_exitComment}    ${provide_agentChat_cancelTaskComment}    clear=True
    Sleep    2s

Verify that the ${dialogMessage} dialog content is displayed on the ${taskOption} screen of the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    1S
    Wait Until Element Is Visible    ${lbl_agentChat_${taskSection}_${taskOption}_dialogContent}    timeout=${xxlTimeout}
    Scroll button or label into view    ${lbl_agentChat_${taskSection}_${taskOption}_dialogContent}
    Wait for pega masking icon to complete
    ${actualText}    Get Text    ${lbl_agentChat_${taskSection}_${taskOption}_dialogContent}

    IF    '${dialogMessage}'=='userAddress'
        ${expectedText}    Set Variable    ${gAddressDialogMessage}
    ELSE IF    '${dialogMessage}'=='userEmailAddress'
        ${expectedText}    Set Variable    ${gEmailAddressDialogMessage}
    ELSE IF    '${dialogMessage}'=='userEsignDocEmailAddress'
        ${expectedText}    Set Variable    ${gEsignDocEmailAddressDialogMessage}
    ELSE IF    '${dialogMessage}'=='userEsignDocEmailAddressSSN'
        ${expectedText}    Set Variable    ${gEsignDocEmailAddressSSNDialogMessage}
    ELSE
        ${expectedText}    Set Variable    ${lbl_agentChat_${taskSection}_${taskOption}_dialogContent_${dialogMessage}_txt}
    END
    Should Be Equal    ${actualText}    ${expectedText}

Verify that the ${dialogMessage} dialog content is displayed on the ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    1s
    Wait Until Element Is Visible    ${lbl_agentChat_${taskSection}_${taskOption}_dialogContent}    timeout=${xxlTimeout}
    Scroll button or label into view    ${lbl_agentChat_${taskSection}_${taskOption}_dialogContent}
    Wait for pega masking icon to complete
    ${actualText}    Get Text    ${lbl_agentChat_${taskSection}_${taskOption}_dialogContent}

    IF    '${dialogMessage}'=='userAddress'
        ${expectedText}    Set Variable    ${gAddressDialogMessage}
    ELSE IF    '${dialogMessage}'=='userEmailAddress'
        ${expectedText}    Set Variable    ${gEmailAddressDialogMessage}
    ELSE IF    '${dialogMessage}'=='userEsignDocEmailAddress'
        ${expectedText}    Set Variable    ${gEsignDocEmailAddressDialogMessage}
    ELSE IF    '${dialogMessage}'=='userEsignDocEmailAddressSSN'
        ${expectedText}    Set Variable    ${gEsignDocEmailAddressSSNDialogMessage}
    ELSE
        ${expectedText}    Set Variable    ${lbl_agentChat_${taskSection}_${taskOption}_dialogContent_${dialogMessage}_txt}
    END
    Should Be Equal    ${actualText}    ${expectedText}

Wrap up the agentChat ${taskOption} task for the ${taskSection} phone call interaction
    Select the agentChat CCS wrap up chat button
    Select the agentChat CCS wrap up submit button
    Wait for pega masking icon to complete
    Log out from the agentChat ccs portal
    Close browser

Verify Phone# on the UpdatePhoneNumber screen in the general section
    Click the AgentChat button    btn_agentChat_phoneNumberVerified

Verify Email on the UpdateEmailAddress screen in the general section
    Click the AgentChat button    btn_agentChat_EmailVerified

Verify BillingLocation on the UpdateAccountBillingAddress screen in the general section
    Click the AgentChat button    btn_agentChat_AddressVerified


Verify the ${ConfirmationMessage} confirmationmessage is displayed on the ${taskOption} screen of the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    2s
    Wait Until Element Is Visible    ${lbl_agentChat_${taskSection}_${taskOption}_ConfirmationMsg}    timeout=${mTimeout}
    Scroll button or label into view    ${lbl_agentChat_${taskSection}_${taskOption}_ConfirmationMsg}
    Wait for pega masking icon to complete
    ${actualText}    Get Text   ${lbl_agentChat_${taskSection}_${taskOption}_ConfirmationMsg}
    ${expectedText}    Convert To String    ${lbl_agentChat_${taskSection}_${taskOption}_${ConfirmationMessage}_txt}
    Should Be Equal    ${actualText}    ${expectedText}

Verify Tracking comments for the SendBeeline
    Click on the help button on the SendBeeline screen of the general section
    Wait Until Element Is Visible    ${btn_agentChat_general_SendBeeline_historyandattachments}   timeout=${mTimeout}
    Wait Until Element Is Enabled    ${btn_agentChat_general_SendBeeline_historyandattachments}    timeout=${mTimeout}
    Click Element    ${btn_agentChat_general_SendBeeline_historyandattachments}
    Switch Window  locator=NEW
    Sleep    2s
    Click Element    ${HistoryAndCaseNarrative}
    sleep    2s
    ${actualText}    Get text    ${trackingComments}
    ${expectedText}    Convert To String    Service Case=Send Beeline
    Should Contain    ${actualText}    ${expectedText}
    Switch Window  locator=MAIN
    Select Frame    PegaGadget1Ifr

