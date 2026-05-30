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
${fld_policyHolderChat_general_exitComment}    ${fld_policyHolderChat_taskForm_exitComment}

## TASK -- Privacy Incident
${btn_policyHolderChat_addTask_general_customerInquiry}                  xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Customer Inquiry')]
${lbl_policyHolderChat_general_customerInquiry_sectionHeader}                xpath://h2[contains(text(),'Customer Inquiry')]
${dd_policyHolderChat_general_customerInquiry_routingDestination}            xpath://select[contains(@data-test-id,'202112200132380615298')]
${dd_policyHolderChat_general_customerInquiry_routingDestination_option}     xpath://select[contains(@data-test-id,'202112200132380615298')]//option[text()='dropDownOption']
${dd_policyHolderChat_general_customerInquiry_reason}                        xpath://select[contains(@data-test-id,'202112200138120734779')]
${dd_policyHolderChat_general_customerInquiry_reason_option}                 xpath://select[contains(@data-test-id,'202112200138120734779')]//option[text()='dropDownOption']
${dd_policyHolderChat_general_customerInquiry_policy}                        xpath://select[contains(@data-test-id,'2019100514161107003637')]
${dd_policyHolderChat_general_customerInquiry_policy_option}                 xpath://select[contains(@data-test-id,'2019100514161107003637')]//option[text()='dropDownOption']
${fld_policyHolderChat_general_customerInquiry_incidentId}                   xpath://input[contains(@data-test-id,"202210191537440865155") and contains(@id,"22e2b07a")]
${fld_policyHolderChat_general_customerInquiry_situationSolution}            xpath://textarea[contains(@data-test-id,'202112200151130386614')]
${fld_policyHolderChat_general_customerInquiry_NonClientFirstName}           xpath://input[contains(@data-test-id,'202206091210420554327') and contains(@id,'ec03fee0')]
${fld_policyHolderChat_general_customerInquiry_NonClientLastName}            xpath://input[contains(@data-test-id,'202206150702580213248') and contains(@id,'badc35be')]
${btn_policyHolderChat_general_customerInquiry_submit}                       ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_general_privacyIncident_closeTask}                    ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_general_customerInquiry_exitTask}                     xpath://button[contains(@data-test-id,'202111221740340424139') and text()='Exit']
${btn_policyHolderChat_general_customerInquiry_closeOnExitTask}              ${btn_policyHolderChat_taskForm_exitClose}
${btn_policyHolderChat_general_customerInquiry_help}                         xpath://button[contains(@data-test-id,'20141215070415002520549') and contains(@title,'Help')]
${btn_policyHolderChat_general_customerInquiry_historyandattachments}        xpath://span[contains(@class,'menu-item-title') and (text()='History and attachments')]
${lbl_policyHolderChat_general_customerInquiry_dialogContent_taskConfirmation_txt}    xpath://div[contains(@data-test-id,'202004071016180736621')]

## TASK -- Reset Account Password
${btn_policyHolderChat_addTask_general_resetAccountPassword}                       xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Reset Account/ Password')]
${btn_policyHolderChat_general_resetAccountPassword_exitTask}                      xpath://button[contains(@data-test-id,'202007100155360360954')]
${btn_policyHolderChat_general_resetAccountPassword_closeTask}                     ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_general_resetAccountPassword_requestCode}                   xpath://button[text()='Request Code']
${fld_policyHolderChat_general_resetAccountPassword_mobileNumber}                  xpath://input[contains(@name,'PhoneNumber')]
${lbl_policyHolderChat_general_resetAccountPassword_sectionHeader}                 xpath://h2[contains(text(),'Reset Account and Password')]
${btn_policyHolderChat_general_resetAccountPassword_closeOnExitTask}               ${btn_policyHolderChat_taskForm_exitClose}
${chkBox_policyHolderChat_general_resetAccountPassword_authorizeAndRequestCode}    xpath://label[contains(text(),'Check to Authorize')]

## TASK -- Save Call Recording

${chkBox_policyHolderChat_general_saveCallRecording_VROD}                xpath://input[@data-test-id='202207040415310175844' and contains(@name,'VROD')]
${btn_policyHolderChat_addTask_general_saveCallRecording}                xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Save Call Recording')]
${btn_policyHolderChat_general_saveCallRecording_closeTask}              ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_general_saveCallRecording_exitTask}               xpath://button[contains(@data-test-id,'202111221740340424139')]
${btn_policyHolderChat_general_saveCallRecording_groupCall}              xpath://h3[text()='Group Call']
${dd_policyHolderChat_general_saveCallRecording_policyNumber}            xpath://select[contains(@data-test-id,'202111221549560045703')]
${btn_policyHolderChat_general_saveCallRecording_SaveRecording}           xpath://button[@data-test-id='2015021306370007097332' and contains(@name,'CaseAction')]
${fld_policyHolderChat_general_saveCallRecording_accountNumber}          xpath://input[@data-test-id='202112020451540244146' and contains(@name,'AccNumber')]
${chkBox_policyHolderChat_general_saveCallRecording_modeChanges}         xpath:(//input[@data-test-id='202111231233010760722' and contains(@name,'GroupCallChangeRequest')])[1]
${chkBox_policyHolderChat_general_saveCallRecording_nameChanges}         xpath:(//input[@data-test-id='202111231233010760722' and contains(@name,'GroupCallChangeRequest')])[3]
${chkBox_policyHolderChat_general_saveCallRecording_nameChange}          xpath:(//input[@data-test-id='202111231233010760722' and contains(@name,'PolicyCallChangeRequest')])[1]
${btn_policyHolderChat_general_saveCallRecording_associateCall}          xpath://h3[text()='Associate Call']
${chkBox_policyHolderChat_general_saveCallRecording_aflacAlways}         xpath:(//input[@data-test-id='202111231233010760722' and contains(@name,'PolicyCallChangeRequest')])[10]
${lbl_policyHolderChat_general_saveCallRecording_sectionHeader}          xpath://h2[contains(text(),'Save Call Recording')]
${fld_policyHolderChat_general_saveCallRecording_associateNumber}        xpath://input[@data-test-id='202112020451540244146' and contains(@name,'WritingNumber')]
${btn_policyHolderChat_general_saveCallRecording_closeOnExitTask}        ${btn_policyHolderChat_taskForm_exitClose}
${dd_policyHolderChat_general_saveCallRecording_policyNumber_option}     xpath://select[contains(@data-test-id,'202111221549560045703')]//option[text()='dropDownOption']
${chkBox_policyHolderChat_general_saveCallRecording_addDirectDeposit}    xpath:(//input[@data-test-id='202111231233010760722' and contains(@name,'AssociateCallChangeRequest')])[1]
${chkBox_policyHolderChat_general_saveCallRecording_agentCollections}    xpath:(//input[@data-test-id='202111231233010760722' and contains(@name,'AssociateCallChangeRequest')])[5]
${chkBox_policyHolderChat_general_saveCallRecording_callClassifiesAsEmergencyOrder}    xpath://input[@data-test-id='202111221606530079746' and contains(@name,'TemplateCheckbox')]

## TASK -- Send Beeline
${btn_policyHolderChat_addTask_general_sendBeeline}                      xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Send Beeline')]
${lbl_policyHolderChat_general_sendBeeline_sectionHeader}                xpath://h2[contains(text(),'Send Beeline')]
${dd_policyHolderChat_general_sendBeeline_routingDestination}            xpath://select[contains(@data-test-id,'202112200132380615298')]
${dd_policyHolderChat_general_sendBeeline_routingDestination_option}     xpath://select[contains(@data-test-id,'202112200132380615298')]//option[text()='dropDownOption']
${dd_policyHolderChat_general_sendBeeline_reason}                        xpath://select[contains(@data-test-id,'202112200138120734779')]
${dd_policyHolderChat_general_sendBeeline_reason_option}                 xpath://select[contains(@data-test-id,'202112200138120734779')]//option[text()='dropDownOption']
${dd_policyHolderChat_general_sendBeeline_policy}                        xpath://select[contains(@data-test-id,'2019100514161107003637') and contains(@name,'PolicyForBeeline')]
${dd_policyHolderChat_general_sendBeeline_policy_option}                 xpath://select[contains(@data-test-id,'2019100514161107003637')]//option[contains(text(),'dropDownOption')]
${chkBox_policyHolderChat_general_sendBeeline_VROD}                      ${chkBox_policyHolderChat_taskAddressForm_VROD}
${chkBox_policyHolderChat_general_sendBeeline_ManualVROD}                ${chkBox_policyHolderChat_taskAddressForm_ManualVROD}
${fld_policyHolderChat_general_sendBeeline_comments}                     xpath://textarea[contains(@data-test-id,'202112200151130386614')]
${chkBox_policyHolderChat_general_sendBeeline_Transfer}                  xpath:(//div[text()='Transfer']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${chkBox_policyHolderChat_general_sendBeeline_DuplicatePolicy}           xpath:(//div[text()='Duplicate Policy']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${chkBox_policyHolderChat_general_sendBeeline_BenefitInquiry}            xpath:(//div[text()='Benefit Inquiry']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${chkBox_policyHolderChat_general_sendBeeline_Cancellation}              xpath:(//div[text()='Cancellation']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${chkBox_policyHolderChat_general_sendBeeline_BeneficiaryChange}         xpath:(//div[text()='Beneficiary Change']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${chkBox_policyHolderChat_general_sendBeeline_BankdraftCreditCard}       xpath:(//div[text()='Bankdraft/Credit Card']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${chkBox_policyHolderChat_general_sendBeeline_RCodeInquiry}              xpath:(//div[text()='R-Code Inquiry']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${chkBox_policyHolderChat_general_sendBeeline_StopPaymentRequest}        xpath:(//div[text()='Stop Payment Request']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${chkBox_policyHolderChat_general_sendBeeline_ReplacementChecks}         xpath:(//div[text()='Replacement Checks']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${chkBox_policyHolderChat_general_sendBeeline_IDCard}                    xpath:(//div[text()='ID Card']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${chkBox_policyHolderChat_general_sendBeeline_Death Claim}               xpath:(//div[text()='Death Claim']//preceding::input[@data-test-id='202111231233010760722'])[last()]
${btn_policyHolderChat_general_sendBeeline_submit}                       ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_general_sendBeeline_closeTask}                    ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_general_sendBeeline_exitTask}                     xpath:(//button[contains(@data-test-id,'202111221740340424139') and text()='Exit'])[last()]
${lbl_policyHolderChat_general_sendBeeline_dialogContent_taskConfirmation_txt}    xpath://div[contains(@data-test-id,'2015031106000209843748') and contains (text(),'A request to review this Claim beeline has been sent.')]
${btn_policyHolderChat_general_sendBeeline_closeOnExitTask}              ${btn_policyHolderChat_taskForm_exitClose}
${chkBox_policyHolderChat_general_sendBeeline_Tokenize}                  xpath://input[@data-test-id='202209151223310625249']
${fld_policyHolderChat_general_sendBeeline_Debitcard}                    xpath://input[@data-test-id='202209151229580203141']
${btn_policyHolderChat_general_sendBeeline_KeyButton}                    xpath:// button[@data-test-id='202209160724500765592']
${fld_policyHolderChat_general_sendBeeline_TokenizedCard}                xpath://textarea[@data-test-id='202112200151130386614' and contains(text(),'Tokenized')]
${fld_policyHolderChat_general_sendBeeline_incorrectCard}                xpath://span[contains(text(),'We only accept')]
${fld_policyHolderChat_general_sendBeeline_invalidCard}                  xpath://span[contains(text(),'Invalid Card')]
${radioBtn_policyHolderChat_sendBeeline_OneTimePayment}                  xpath://label[contains(@class,'radioLabel') and contains(text(),'One Time Payment')]  
${btn_policyHolderChat_general_sendBeeline_attachFile}                   xpath://button[text()='Attach File']
${fld_policyHolderChat_General_sendBeeline_modalFileDropZone}            ${fld_policyHolderChat_policy_reinstatePolicy_modalFileDropZone}
${btn_policyHolderChat_General_sendBeeline_modalSelectFiles}             ${btn_policyHolderChat_policy_reinstatePolicy_modalSelectFiles}
${btn_policyHolderChat_general_sendBeeline_modalAttach}                  ${btn_policyHolderChat_policy_reinstatePolicy_modalAttach}
${dd_policyHolderChat_general_sendBeeline_groupRoutingDestinationDropdown}            xpath://select[@data-test-id='202509221002510016670']
${dd_policyHolderChat_general_sendBeeline_groupRoutingDestinationDropdown_option}     xpath://select[@data-test-id='202509221002510016670']//option[@value='dropDownOption']
${chkBox_policyHolderChat_general_sendBeeline_claimantIsCertHolder}      xpath://input[@data-test-id='202509221002510017221'and @type='checkbox']
${dd_policyHolderChat_general_sendBeeline_lOBDropdown}                   xpath://select[@data-test-id='2025092210293209471000']
${dd_policyHolderChat_general_sendBeeline_lOBDropdown_option}            xpath://select[@data-test-id='2025092210293209471000']//option[@value='dropDownOption']
${dd_policyHolderChat_general_sendBeeline_claimsDropdown}                xpath://div[@data-test-id='202311211514430665383']
${dd_policyHolderChat_general_sendBeeline_claimsDropdown_option}         xpath://span[contains(text(),'dropDownOption')]
${dd_policyHolderChat_general_sendBeeline_reasonDropdown}                xpath://select[@data-test-id='202509221029320948554']
${dd_policyHolderChat_general_sendBeeline_reasonDropdown_option}         xpath://option[@value='dropDownOption']
${fld_policyHolderChat_general_sendBeeline_reasonDescription}            xpath://textarea[contains(@data-test-id,'202509221035400829940')]
${fld_policyHolderChat_general_sendBeeline_beelineGroupComments}         xpath://textarea[contains(@data-test-id,'202509221029320949431')]
${btn_policyHolderChat_general_sendBeeline_submit}                       ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_general_sendBeeline_groupCancel}                  xpath://button[contains(@data-test-id,'2014102902290403021036') and contains(text(),'Cancel')]
${btn_policyHolderChat_general_sendBeeline_groupClose}                   xpath://button[contains(@data-test-id,'202003120553410387146725') and contains(text(),'Close')]  
${lbl_policyHolderChat_general_sendBeeline_fields1}                      xpath://span[@data-test-id="202003200321170983654"]
${lbl_policyHolderChat_general_sendBeeline_fields2}                      xpath://span[(@data-test-id="20200320032117098296") and contains(text(),'GRP-')]
${lbl_policyHolderChat_general_sendBeeline_fields3}                      xpath://span[@data-test-id="20200320032117098296"]

## TASK -- Email Correspondence
${btn_policyHolderChat_addTask_general_emailCorrespondence}              xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Email Correspondence')]
${lbl_policyHolderChat_general_emailCorrespondence_sectionHeader}        xpath://h2[contains(text(),'Email Correspondence')]
#${radioBtn_policyHolderChat_general_sendViaUsps}                        ${radioBtn_policyHolderChat_taskAddressForm_sendViaUsps}
#${radioBtn_policyHolderChat_general_sendViaEmail}                       ${radioBtn_policyHolderChat_taskAddressForm_sendViaEmail}
${btn_policyHolderChat_general_emailCorrespondence_send}                 xpath://button[text()='Send']
${btn_policyHolderChat_general_emailCorrespondence_attachFile}           xpath://button[text()='Attach File']
${btn_policyHolderChat_general_emailCorrespondence_modalAttach}          ${btn_policyHolderChat_policy_reinstatePolicy_modalAttach}
${btn_policyHolderChat_General_emailCorrespondence_modalSelectFiles}     ${btn_policyHolderChat_policy_reinstatePolicy_modalSelectFiles}
${fld_policyHolderChat_General_emailCorrespondence_modalFileDropZone}    ${fld_policyHolderChat_policy_reinstatePolicy_modalFileDropZone}
${btn_policyHolderChat_general_emailCorrespondence_closeTask}            ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_general_emailCorrespondence_exitTask}             ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_general_emailCorrespondence_closeOnExitTask}      ${btn_policyHolderChat_taskForm_exitClose}

## TASK -- Start CoBrowse Session
${btn_policyHolderChat_addTask_general_startCoBrowseSession}            xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Start Co-Browse Session')]
${lbl_policyHolderChat_general_startCoBrowseSession_sectionHeader}      xpath://h2[contains(text(),'Start co browse')]
${btn_policyHolderChat_general_startCoBrowseSession_closeTask}          ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_general_startCoBrowseSession_exitTask}           ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_general_startCoBrowseSession_closeOnExitTask}    ${btn_policyHolderChat_taskForm_exitClose}

## TASK --  Update Email Address
${btn_policyHolderChat_addTask_general_updateEmailAddress}                    xpath://a[contains(@data-test-id, '2014123005242607302524') and contains(@title,'Update Email Address')]
${lbl_policyHolderChat_general_updateEmailAddress_sectionHeader}              xpath://h2[contains(text(),'Update Email Address')]
${btn_policyHolderChat_emailAddressVerified}                                  xpath:(//label[contains(text(),'No')])[last()]
${chkBox_policyHolderChat_general_updateEmailAddress_VROD}                    ${chkBox_policyHolderChat_taskAddressForm_VROD}
${chkBox_policyHolderChat_general_updateEmailAddress_ManualVROD}              ${chkBox_policyHolderChat_taskAddressForm_ManualVROD}
${fld_policyHolderChat_general_updateEmailAddress_emailAddress}               xpath://input[contains(@name,"EmailList")]
${btn_policyHolderChat_general_updateEmailAddress_submit}                     ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_general_updateEmailAddress_closeTask}                  ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_general_updateEmailAddress_exitTask}                   ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_general_updateEmailAddress_closeOnExitTask}            ${btn_policyHolderChat_taskForm_exitClose}

## TASK -- Update Home Address
${btn_policyHolderChat_addTask_general_updateHomeAddress}               xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Update Home Address')]
${lbl_policyHolderChat_general_updateHomeAddress_sectionHeader}         xpath://h2[contains(text(),'Update Home Address')]
${chkBox_policyHolderChat_general_updateHomeAddress_addressVerified}    xpath://input[contains(@type,'checkbox') and contains(@name,'EditAddress')]
${chkBox_policyHolderChat_general_updateHomeAddress_VROD}               ${chkBox_policyHolderChat_taskAddressForm_VROD}
${chkBox_policyHolderChat_general_updateHomeAddress_ManualVROD}         ${chkBox_policyHolderChat_taskAddressForm_ManualVROD}
${chkBox_policyHolderChat_general_updateHomeAddress_updateManually}     xpath://input[contains(@type,'checkbox') and contains(@name,'UpdateManually')]
${btn_policyHolderChat_general_updateHomeAddress_submit}                ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_general_updateHomeAddress_closeTask}             ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_general_updateHomeAddress_exitTask}              ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_general_updateHomeAddress_closeOnExitTask}       ${btn_policyHolderChat_taskForm_exitClose}

## TASK -- Update Phone Number
${btn_policyHolderChat_addTask_general_updatePhoneNumber}                   xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Update Phone Number')]
${lbl_policyHolderChat_general_updatePhoneNumber_sectionHeader}             xpath://h2[contains(text(),'Update Phone Number')]
${btn_policyHolderChat_general_updatePhoneNumber_closeTask}                 ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_general_updatePhoneNumber_exitTask}                  ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_general_updatePhoneNumber_closeOnExitTask}           ${btn_policyHolderChat_taskForm_exitClose}
${fld_policyHolderChat_general_updatePhoneNumber_phoneNumber}               xpath://input[contains(@data-test-id,'20200306184601059858676') and contains(@name,'PhoneNumber')]
${btn_policyHolderChat_general_updatePhoneNumber_submit}                    ${btn_policyHolderChat_taskForm_submit}
${chkBox_policyHolderChat_general_updatePhoneNumber_VROD}                   ${chkBox_policyHolderChat_taskAddressForm_VROD}
${chkBox_policyHolderChat_general_updatePhoneNumber_ManualVROD}             ${chkBox_policyHolderChat_taskAddressForm_ManualVROD}
${btn_policyHolderChat_phoneNumberVerified}                                  xpath:(//label[contains(text(),'No')])[last()]
${btn_policyHolderChat_HomeAddressVerified}                                  xpath:(//label[contains(text(),'No')])[last()]
${chkBox_policyHolderChat_general_updatePhoneNumber_phoneNumberVerified}    xpath://label[text()='Phone Number Verified?']

## TASK -- Threat Inquiry
${btn_policyHolderChat_addTask_general_threatInquiry}                   xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(text(), 'Threat Inquiry')]
${lbl_PolicyHolderChat_general_threatInquiry_sectionHeader}          xpath://h2[contains(text(), 'Threat Inquiry')]
${radioBtn_PolicyHolderChat_general_office}          xpath://label[contains(text(),'Office')]
${fld_policyHolderChat_general_threatInquiry_cubicalNo}           xpath://input[contains(@data-test-id,'202504150412500460521') and contains(@name,'$PpyWorkPage$pCubicleNumber')]
${chkBox_PolicyHolderChat_general_threatInquiry_remote}          xpath://label[contains(text(),'Remote')]
${chkBox_PolicyHolderChat_general_threatInquiry_bombThreat}          xpath://label[contains(text(),'Bomb Threat')]
${chkBox_PolicyHolderChat_general_threatInquiry_threatToCaller}          xpath://label[contains(text(),'Threat to Caller')]
${chxBox_PolicyHolderChat_general_threatInquiry_threatToCompany}          xpath://label[contains(text(),'Threat to Company')]
${chxBox_PolicyHolderChat_general_threatInquiry_threatToEmployee}          xpath://label[contains(text(),'Threat to Employee')]
${btn_policyHolderChat_general_threatInquiry_submit}                       xpath://button[contains(text(),'Submit')]
${btn_policyHolderChat_general_threatInquiry_submit2}                       xpath://button[contains(@name,'pyCaseActionAreaButtons_pyWorkPage_13')]
${btn_policyHolderChat_general_threatInquiry_closeTask}                    xpath://button[contains(@data-test-id,'2014102902290403021036') and contains(text(),'Cancel')]

${lbl_PolicyHolderChat_general_threatInquiry_bombThreatHeader}          xpath://span[contains(text(), 'Bomb Threat')]
${lbl_PolicyHolderChat_general_threatInquiry_bombThreatHeader_txt}          Bomb Threat
${lbl_PolicyHolderChat_general_threatInquiry_callerDetailsHeader}          xpath://div[contains(text(), 'Caller Details')]
${lbl_PolicyHolderChat_general_threatInquiry_callerDetailsHeader_txt}          Caller Details
${lbl_PolicyHolderChat_general_threatInquiry_nameOfCaller}          xpath://label[contains(@data-test-id,'202504040701530352646-Label') and contains(text(), 'Name of Caller')]
${lbl_PolicyHolderChat_general_threatInquiry_nameOfCaller_txt}          Name of Caller
${fld_policyHolderChat_general_threatInquiry_nameOfCaller}           xpath://input[contains(@data-test-id,'202504040701530352646') and contains(@name,'$PpyWorkPage$pContact$pName')]
${lbl_PolicyHolderChat_general_threatInquiry_numberOnFile}          xpath://span[contains(@data-test-id,'202504040701530352646-Label') and contains(text(), 'Phone Number on file')]
${lbl_PolicyHolderChat_general_threatInquiry_numberOnFile_txt}          Phone Number on file
${lbl_PolicyHolderChat_general_threatInquiry_number}          xpath://span[contains(@data-test-id,'202504040701530352646-Label') and contains(text(), 'Phone Number')]
${lbl_PolicyHolderChat_general_threatInquiry_number_txt}          Phone Number
${fld_policyHolderChat_general_threatInquiry_address}           xpath://input[contains(@data-test-id,'202504140540450213886') and contains(@name,'$PpyWorkPage$pContact$pAddressList$l1$pAddressLine1')]
${lbl_PolicyHolderChat_general_threatInquiry_address}          xpath://label[contains(@data-test-id,'202504140540450213886-Label') and contains(text(), 'Address')]
${lbl_PolicyHolderChat_general_threatInquiry_address_txt}          Address
${fld_policyHolderChat_general_threatInquiry_city}           xpath://input[contains(@data-test-id,'202504140549370905169') and contains(@name,'$PpyWorkPage$pContact$pAddressList$l1$pCity')]
${lbl_PolicyHolderChat_general_threatInquiry_city}          xpath://label[contains(@data-test-id,'202504140549370905169-Label') and contains(text(), 'City')]
${lbl_PolicyHolderChat_general_threatInquiry_city_txt}          City
${fld_policyHolderChat_general_threatInquiry_zipcode}           xpath://input[contains(@data-test-id,'202504140549370906137') and contains(@name,'$PpyWorkPage$pContact$pAddressList$l1$pZipCode')]
${lbl_PolicyHolderChat_general_threatInquiry_zipcode}          xpath://label[contains(@data-test-id,'202504140549370906137-Label') and contains(text(), 'Zip code')]
${lbl_PolicyHolderChat_general_threatInquiry_zipcode_txt}          Zip code
${lbl_PolicyHolderChat_general_threatInquiry_state}          xpath://label[contains(@data-test-id,'202504170454060195170-Label') and contains(text(), 'State')]
${lbl_PolicyHolderChat_general_threatInquiry_state_txt}          State
${btn_policyHolderChat_general_threatInquiry_submit}                       xpath://button[contains(@data-test-id,'2015021306370007097332') and contains(text(),'Submit')]
${btn_policyHolderChat_general_threatInquiry_closeTask}                    xpath://button[contains(@data-test-id,'202504140612380547155') and contains(text(),'Cancel')]
${btn_policyHolderChat_general_threatInquiry_help}                         xpath://button[contains(@data-test-id,'20141215070415002520549') and contains(@title,'Help')]
${btn_policyHolderChat_general_threatInquiry_historyandattachments}        xpath://span[contains(text(),'History and attachments')]
${btn_policyHolderChat_general_threatInquiry_attachment}                       xpath://button[contains(text(), 'Attachments')]


${fld_policyHolderChat_general_threatInquiry_callerAskFor}           xpath://input[contains(@data-test-id,'202504040701530352646') and contains(@name,'$PpyWorkPage$pCallerRequestFullName')]
${fld_policyHolderChat_general_threatInquiry_callerSay}           xpath://textarea[contains(@data-test-id,'202504040707440863328') and contains(@name,'$PpyWorkPage$pThreatCallerConversation')]



## Dialog Content
## ---   Privacy Incident   --- ##
${lbl_policyHolderChat_general_customerInquiry_dialogContent}                        ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_general_customerInquiry_dialogContent_reviewprivacyIncident_txt}      Ok. let's get started. Let me review some of the data about your Customer Inquiry.
${lbl_policyHolderChat_general_customerInquiry_dialogContent_assistance_txt}         ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_general_customerInquiry_dialogContent_canceledTask_txt}       ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_general_customerInquiry_dialogContent_claimWrapUp_txt}        ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_general_customerInquiry_dialogContent_txt}                    The case, Customer Inquiry is successfully created. Please confirm!

## ---   Reset Account Password   --- ##
${lbl_policyHolderChat_general_resetAccountPassword_dialogContent}                                  ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_general_resetAccountPassword_dialogContent_assistance_txt}                   ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_general_resetAccountPassword_dialogContent_canceledTask_txt}                 ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_general_resetAccountPassword_dialogContent_claimWrapUp_txt}                  ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_general_resetAccountPassword_dialogContent_resetAccountPassword_txt}         Due to security guidelines in place, you must go through an additional level of identity verification, which is a single-use access code texted to you and provided back verbally. You authorize Aflac to use the phone number you provided to verify your identity via One-Time Password via SMS text message. If a One-Time Password is sent, mobile messaging rates may apply. Do you authorize Aflac to send this SMS message?
${lbl_policyHolderChat_general_resetAccountPassword_dialogContent_passwordResetConfirmation_txt}    I'm sorry but we were not able to successfully verify your identity and therefore I'm unable to reset your account and password at this time. A letter will be sent out to you explaining how to correct this issue.

## ---   Save Call Recording   --- ##
${lbl_policyHolderChat_general_saveCallRecording_dialogContent}                          ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_general_saveCallRecording_dialogContent_assistance_txt}           ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_general_saveCallRecording_dialogContent_claimWrapUp_txt}          ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_general_saveCallRecording_dialogContent_canceledTask_txt}         ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_general_saveCallRecording_dialogContent_saveCallRecording_txt}    Due to the nature of your request, this call is being recorded for verification of our conversation.

## ---   Send Beeline   --- ##
${lbl_policyHolderChat_general_sendBeeline_dialogContent}                        ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_general_sendBeeline_dialogContent_reviewBeeline_txt}      Ok. let's get started. Let me review some of the data about your Beeline.
${lbl_policyHolderChat_general_sendBeeline_dialogContent_escalateBeeline_txt}    Ok, I have submitted a request to have this reviewed. Is there anything else I can help you with today?
${lbl_policyHolderChat_general_sendBeeline_dialogContent_assistance_txt}         ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_general_sendBeeline_dialogContent_canceledTask_txt}       Ok, I've canceled this action.. Is there anything else I can assist you with today?
${lbl_policyHolderChat_general_sendBeeline_dialogContent_claimWrapUp_txt}        ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_general_sendBeeline_dialogContent_reviewGroupBeeline_txt}    OK, let's get started. Let me review some of the data about your beeline.
${lbl_policyHolderChat_general_sendBeeline_successSubmitMessage}                 xpath://span/strong[text()='Beeline Successfully Submitted']
# Send Beeline Group Details Summary
${lbl_policyHolderChat_general_sendBeeline_RoutingDestination}                   Claims
${lbl_policyHolderChat_general_sendBeeline_Certificate}                          CER0002015115
${lbl_policyHolderChat_general_sendBeeline_LineOfBusiness}                       CRITICAL ILLNESS
${lbl_policyHolderChat_general_sendBeeline_Claim}                                CLM0002010452
${lbl_policyHolderChat_general_sendBeeline_Reason}                               Other (Brief Description Required)
${lbl_policyHolderChat_general_sendBeeline_GCWID}                                GRP-
${lbl_policyHolderChat_general_sendBeeline_Comments}                             This is a comment
${lbl_policyHolderChat_general_sendBeeline_ReasonDescription}                    This is reason description     

## ---   EMail Correspondence   --- ##
${lbl_policyHolderChat_general_emailCorrespondence_dialogContent}                              ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_general_emailCorrespondence_dialogContent_assistance_txt}               ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_general_emailCorrespondence_dialogContent_canceledTask_txt}             Ok, I've canceled this action.. Is there anything else I can assist you with today?
${lbl_policyHolderChat_general_emailCorrespondence_dialogContent_claimWrapUp_txt}              ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_general_emailCorrespondence_dialogContent_emailCorrespondence_txt}      What email address would you like this delivered to?
${lbl_policyHolderChat_general_emailCorrespondence_dialogContent_emailSentConfirmation_txt}    The email has been sent. You should receive the email soon.
#${lbl_policyHolderChat_general_emailCorrespondence_dialogContent_formsSentConfirmation_txt}    The forms will be mailed out within a business day. You should receive the forms in few business days.

## ---   Start CoBrowse Session   --- ##
${lbl_policyHolderChat_general_startCoBrowseSession_dialogContent}                     ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_general_startCoBrowseSession_dialogContent_assistance_txt}      ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_general_startCoBrowseSession_dialogContent_canceledTask_txt}    ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_general_startCoBrowseSession_dialogContent_claimWrapUp_txt}     ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_general_startCoBrowseSession_dialogContent_startCoBrowseSession_txt}    If you're not already on the website, please go there now. ${SPACE}Once you're there, press the CTRL & Enter to enable the co-browsing session. ${SPACE}A unique session key will be shown on your screen which you will need to share with me to begin the session.

## ---   Update Email Address   --- ##
${lbl_policyHolderChat_general_updateEmailAddress_dialogContent}                                ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_general_updateEmailAddress_dialogContent_yourEmailAddress_txt}           Can you tell me the email address we currently have for you?${SPACE}
${lbl_policyHolderChat_general_updateEmailAddress_dialogContent_emailUpdateConfirmation_txt}    Your email address has been updated. You should be receiving an email from Aflac confirming this change. Is there anything else I can assist you with?
${lbl_policyHolderChat_general_updateEmailAddress_dialogContent_assistance_txt}                 ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_general_updateEmailAddress_dialogContent_canceledTask_txt}               Ok, I've canceled this action.. Is there anything else I can assist you with today?
${lbl_policyHolderChat_general_updateEmailAddress_dialogContent_claimWrapUp_txt}                ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}

## ---   Update Home Address   --- ##
${lbl_policyHolderChat_general_updateHomeAddress_dialogContent}                                   ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_general_updateHomeAddress_dialogContent_assistance_txt}                    ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_general_updateHomeAddress_dialogContent_canceledTask_txt}                  ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_general_updateHomeAddress_dialogContent_claimWrapUp_txt}                   ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
#${lbl_policyHolderChat_general_updateHomeAddress_dialogContent_updateHomeAddress_txt}             May I have the new address and phone number for your account, please?
${lbl_policyHolderChat_general_updateHomeAddress_dialogContent_updateHomeAddress_txt}             Can you tell me the home address we currently have for you?
${lbl_policyHolderChat_general_updateHomeAddress_dialogContent_addressUpdatedConfirmation_txt}    Your address has been updated. You should be receiving an email from Aflac confirming this change.

## ---   Update Phone Number   --- ##
${lbl_policyHolderChat_general_updatePhoneNumber_dialogContent}                                       ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_general_updatePhoneNumber_dialogContent_assistance_txt}                        ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_general_updatePhoneNumber_dialogContent_canceledTask_txt}                      ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_general_updatePhoneNumber_dialogContent_claimWrapUp_txt}                       ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_general_updatePhoneNumber_dialogContent_updatePhoneNumber_txt}                 Can you tell me the phone number we currently have for you?
${lbl_policyHolderChat_general_updatePhoneNumber_dialogContent_phoneNumberUpdatedConfirmation_txt}    Your phone number has been updated. You should be receiving an email from Aflac confirming this change. Is there anything else I can help you with?

## ---   Threat Inquiry   --- ##
${lbl_policyHolderChat_general_threatInquiry_dialogContent}                        ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_general_threatInquiry_dialogContent_threatInquiry_txt}      Please follow these steps while keeping the caller engaged. Only ask questions that feel natural to the flow of the call.
${lbl_policyHolderChat_general_threatInquiry_dialogContent_bombThreat_txt}      Remain calm and discreet. Do not escalate the caller. Your role is to listen and collect key details without putting yourself or others at risk. For example, note specific words, tone and background noises.
${lbl_policyHolderChat_general_threatInquiry_dialogContent_threatToCaller_txt}      Speak gently and with empathy. Stay calm, listen closely and focus on understanding the caller’s safety needs (e.g. fear, isolation or emotional distress).
${lbl_policyHolderChat_general_threatInquiry_dialogContent_threatToCompany_txt}      Remain calm and neutral. Focus on capturing the exact nature of the threat and any specific claims or demands made against the company (e.g., reputational, legal or financial harm).
${lbl_policyHolderChat_general_threatInquiry_dialogContent_threatToEmployee_txt}      Remain calm and discreet. Do not escalate the caller. Your role is to listen and collect key details without putting yourself or others at risk. For example, note specific words, tone and background noises.
${lbl_policyHolderChat_general_threatInquiry_dialogContent_claimWrapUp_txt}                ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}


* Keywords
Enter a '${inputText}' ${fieldType} in the ${textBox} field on ${taskOption} screen in the ${taskSection} section
    Sleep    1s
    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}}    timeout=${sTimeout}
    Wait Until Element Is Enabled    ${fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}}    timeout=${sTimeout}
    Clear Element Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}}
    Sleep    1s
    IF    '${fieldType}'=='emailId'
        ${randomString}=    Generate Random String    3    [LETTERS]
        Press Keys    ${fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}}    ${inputText}${randomString}@aflac.com
        Press Keys    None    TAB
    ELSE IF    '${fieldType}'=='phoneNumber'
        ${randomString}=    Generate Random String    2    [NUMBERS]
        Press Keys    ${fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}}    ${inputText}${randomString}
        Press Keys    None    TAB
    END

Verify the addressUpdatedConfirmation dialog content is displayed after updating the home address
    Click on the submit button on the updateHomeAddress screen of the general section

    Register Keyword To Run On Failure    Do Nothing
    ${present}=    Run Keyword And Return Status    Verify that the addressUpdatedConfirmation dialog content is displayed on the updateHomeAddress screen of the general section
    IF    '${present}'=='False'
        Select the updateManually checkbox on the updateHomeAddress screen in the general section
        Click on the submit button on the updateHomeAddress screen of the general section
        Verify that the addressUpdatedConfirmation dialog content is displayed on the updateHomeAddress screen of the general section
    END
    [Teardown]    Register Keyword To Run On Failure    Capture Page Screenshot

Verify that the Beeline taskConfirmation message is displayed on the sendBeeline screen of the general section
    Wait Until Element Is Visible    ${lbl_policyHolderChat_general_sendBeeline_dialogContent_taskConfirmation_txt}    timeout=${sTimeout}
    ${actualText}    GetText     ${lbl_policyHolderChat_general_sendBeeline_dialogContent_taskConfirmation_txt}
    Should Contain    ${actualText}    A request to review this Claim beeline has been sent.
    Sleep    2s

Switch Browser URL To Test CoBrowse Session
    Switch to the AgentChatbot browser
    Sleep    1s
    Go To    http://customerservicechat-intg.aflac.com/AflacChatbotAgent/index1.html

Verify Tokenized card number as '${cardNumber}'
    Wait Until Element Is Visible    ${fld_policyHolderChat_general_sendBeeline_TokenizedCard}    timeout=${mTimeout}
    ${actualText}    GetText     ${fld_policyHolderChat_general_sendBeeline_TokenizedCard}
    Should Contain    ${actualText}    ${cardNumber}
    Sleep    2s

Verify error message for ${errorMessage} card number
    IF    '${errorMessage}'=='incorrect'
        Wait Until Element Is Visible    ${fld_policyHolderChat_general_sendBeeline_incorrectCard}    timeout=${sTimeout}
        ${actualText}    GetText    ${fld_policyHolderChat_general_sendBeeline_incorrectCard}
        ${expectedText}    Convert To String   We only accept
        Should Contain    ${actualText}    ${expectedText}
    ELSE IF    '${errorMessage}'=='invalid'
        Wait Until Element Is Visible    ${fld_policyHolderChat_general_sendBeeline_invalidCard}    timeout=${sTimeout}
        ${actualText}    GetText   ${fld_policyHolderChat_general_sendBeeline_invalidCard}
        ${expectedText}    Convert To String    Invalid Card
        Should Contain    ${actualText}    ${expectedText}
    END

Select the eCheck Payment Details on the sendBeeline screen of the general section
    ${newWindowHandle}    Get Window Handles   
    Switch Window    ${newWindowHandle}[1]        
    Wait for pega masking icon to complete
    Maximize Browser Window 
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${fld_policyHolderChat_general_sendBeeline_paymentMethod}    timeout=${lTimeout}                       
    Wait Until Element Is Visible    ${radioBtn_policyHolderChat_payment_eCheck}    timeout=${lTimeout}
    Click Element     ${radioBtn_policyHolderChat_payment_eCheck}
    Complete eCheck payment details    makeAPayment    payment
    Click Element     ${btn_policyHolderChat_payment_makeAPayment_submit}
    Sleep    3s  
    Switch Window    ${newWindowHandle}[0]
    Sleep    2s 
    Select the PegaGadget1Ifr iFrame   
    Scroll button or label into view    ${chkBox_policyHolderChat_general_sendBeeline_VROD}    
    Click Element    ${chkBox_policyHolderChat_general_sendBeeline_VROD}
    Wait Until Element Is Visible    ${chkBox_policyHolderChat_general_sendBeeline_ManualVROD}    timeout=${lTimeout}
    Click Element    ${chkBox_policyHolderChat_general_sendBeeline_ManualVROD}    

Select OneTimePayment radio button in the sendBeeline screen of the general section 
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${radioBtn_policyHolderChat_sendBeeline_OneTimePayment}    timeout=${xlTimeout}
    Scroll button or label into view    ${radioBtn_policyHolderChat_sendBeeline_OneTimePayment}
    Click Element    ${radioBtn_policyHolderChat_sendBeeline_OneTimePayment}      

Verify that the sendBeeline summary details are displayed after submission
    Wait for pega masking icon to complete
    Verify the sendBeeline details are correct in the summary section    RoutingDestination       ${lbl_policyHolderChat_general_sendBeeline_RoutingDestination}
    Verify the sendBeeline details are correct in the summary section    Certificate              ${lbl_policyHolderChat_general_sendBeeline_Certificate}
    Verify the sendBeeline details are correct in the summary section    LineOfBusiness           ${lbl_policyHolderChat_general_sendBeeline_LineOfBusiness}               
    Verify the sendBeeline details are correct in the summary section    Claim                    ${lbl_policyHolderChat_general_sendBeeline_Claim}
    Verify the sendBeeline details are correct in the summary section    Reason                   ${lbl_policyHolderChat_general_sendBeeline_Reason}
    Verify the sendBeeline details are correct in the summary section    GCWID                    ${lbl_policyHolderChat_general_sendBeeline_GCWID}
    Verify the sendBeeline details are correct in the summary section    Comments                 ${lbl_policyHolderChat_general_sendBeeline_Comments}
    Verify the sendBeeline details are correct in the summary section    ReasonDescription        ${lbl_policyHolderChat_general_sendBeeline_ReasonDescription}

Verify the sendBeeline details are correct in the summary section
    [Arguments]    ${fieldName}    ${expectedValue}
    Wait for pega masking icon to complete
    IF    '${fieldName}'=='Comments'
        ${allElements}=    Return the sendBeeline fields 1
    ELSE IF    '${fieldName}'=='GCWID'
        ${allElements}=    Return the sendBeeline fields 2  
    ELSE IF    '${fieldName}'=='RoutingDestination' or '${fieldName}'=='Certificate' or '${fieldName}'=='LineOfBusiness' or '${fieldName}'=='Claim' or '${fieldName}'=='Reason' or '${fieldName}'=='ReasonDescription'
        ${allElements}=    Return the sendBeeline fields 3
    END

    ${listCount}=    Get Length    ${allElements}
    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${expectedText}    Convert To String    ${expectedValue}
        IF    '${fieldName}'=='GCWID'
            Exit For Loop IF    '${expectedText}' in '${actualText}'
        ELSE    
            Exit For Loop IF    '${actualText}'=='${expectedText}'
        END    
        IF    ${listcount-1}==${the_element}
            Fail    Element text is not found in the sendBeeline summary section.
        END
    END

Return the sendBeeline fields ${fieldNumber}
    Select the PegaGadget1Ifr iFrame
    Wait Until Element Is Visible    ${lbl_policyHolderChat_general_sendBeelinefields_${fieldNumber}}    timeout=${mTimeout}
    ${allElements}    Get WebElements    ${lbl_policyHolderChat_general_sendBeelinefields_${fieldNumber}}
    RETURN    ${allElements}