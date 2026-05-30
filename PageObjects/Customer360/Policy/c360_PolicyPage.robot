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
${dd_policyHolderChat_policy_policyInfo_policyNumber}             xpath://select[contains(@data-test-id,'20150113072103010458995')]
${dd_policyHolderChat_policy_policyInfo_policyNumber_option}      xpath://select[contains(@data-test-id,'20150113072103010458995')]//option[text()='dropDownOption']
${dd_policyHolderChat_policy_policyInfo_subTabDropDown}           xpath:(//div[contains(@data-click,'showActiveTabListMenu')])[last()]
${dd_policyHolderChat_policy_policyInfo_subTabDropDown_option}    xpath://div[contains(@class,'menu-panel-wrapper')]//span[text()='dropDownOption']
${PolicyFileStatus}                                               xpath://div[@class='content-item content-field item-1 remove-top-spacing flex']//span[@data-test-id='202111051011150784336']

## Policy Page - C360 Tab
${tab_PolicyHolderChat_Policy}    xpath://div[@aria-label='Policy']
${tab_PolicyHolderChat_Certificates}    xpath://div[@aria-label='Certificates']
${tab_PolicyHolderChat_Contact information}    xpath://div[@aria-label='Contact information']
${tab_PolicyHolderChat_Summary Information}    xpath://div[@aria-label='Summary Information']
${tab_PolicyHolderChat_Coverages}    xpath://div[@aria-label='Coverages']
${tab_PolicyHolderChat_Benefits}    xpath://div[@aria-label='Benefits']
${tab_PolicyHolderChat_Claims}    xpath://div[@aria-label='Claims']
${lbl_policyHolderChat_policy_coachingTipContent}    xpath://span[contains(@data-test-id,'2019052808302502546134')]      
${lbl_policyHolderChat_policy_suspenseCodeValue}     xpath:(//span[@data-test-id='202111051011150783743'])[1]

## Email / USPS Form
${radioBtn_policyHolderChat_policy_emailInstructions}    ${radioBtn_policyHolderChat_taskAddressForm_emailInstructions}
${radioBtn_policyHolderChat_policy_eSignDoc}             ${radioBtn_policyHolderChat_taskAddressForm_eSignDoc}
${radioBtn_policyHolderChat_policy_sendViaEmail}         ${radioBtn_policyHolderChat_taskAddressForm_sendViaEmail}
${radioBtn_policyHolderChat_policy_sendViaUsps}          ${radioBtn_policyHolderChat_taskAddressForm_sendViaUsps} 
${fld_policyHolderChat_policy_eSignEmailAddress}         ${fld_policyHolderChat_taskAddressForm_eSignEmailAddress}
${fld_policyHolderChat_policy_ssn}                       ${fld_policyHolderChat_taskAddressForm_ssn}
${fld_policyHolderChat_policy_emailAddress}              ${fld_policyHolderChat_taskAddressForm_emailAddress}
${fld_policyHolderChat_policy_claimName}                 ${fld_policyHolderChat_taskAddressForm_claimName}
${fld_policyHolderChat_policy_address1}                  ${fld_policyHolderChat_taskAddressForm_address1}
${fld_policyHolderChat_policy_address2}                  ${fld_policyHolderChat_taskAddressForm_address2}
${fld_policyHolderChat_policy_city}                      ${fld_policyHolderChat_taskAddressForm_city}
${dd_policyHolderChat_policy_state}                      ${dd_policyHolderChat_taskAddressForm_state}
${dd_policyHolderChat_policy_state_option}               ${dd_policyHolderChat_taskAddressForm_state_option}
${fld_policyHolderChat_policy_zipCode}                   ${fld_policyHolderChat_taskAddressForm_zipCode}
${fld_policyHolderChat_policy_exitComment}               ${fld_policyHolderChat_taskForm_exitComment}

## TASK -- Add / Drop Policy Dependent
${btn_policyHolderChat_addTask_policy_addDropPolicyDependent}                 xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Add / Drop Policy Dependent')]
${lbl_policyHolderChat_policy_addDropPolicyDependent_sectionHeader}           xpath://h2[contains(text(),'Add/Drop Policy Dependent')]
${tbl_policyHolderChat_policy_addDropPolicyDependent_policyList}              xpath:(//tr[contains(@data-test-id,'202008210522120793968') and contains(@pl_index,'rowNumber')])[last()]
${btn_policyHolderChat_policy_addDropPolicyDependent_firstContinueTask}       ${btn_policyHolderChat_taskForm_firstContinue}
${btn_policyHolderChat_policy_addDropPolicyDependent_secondContinueTask}      ${btn_policyHolderChat_taskForm_secondContinue}
${btn_policyHolderChat_policy_addDropPolicyDependent_submit}                  ${btn_policyHolderChat_taskForm_submit}
${chkBox_policyHolderChat_policy_addDropPolicyDependent_addDependent}         xpath://input[contains(@data-test-id,'202008210617100426956')] 
${chkBox_policyHolderChat_policy_addDropPolicyDependent_dropDependent}        xpath://input[contains(@data-test-id,'202008210617100427595')] 
${chkBox_policyHolderChat_policy_addDropPolicyDependent_escalatePriorAdd}     xpath://input[contains(@data-test-id,'202008210617100427938') and contains(@name,'$pIsEscalateAddition')] 
${chkBox_policyHolderChat_policy_addDropPolicyDependent_escalatePriorDrop}    xpath://input[contains(@data-test-id,'202008210617100427938') and contains(@name,'$pIsEscalateDeletion')] 
${chkBox_policyHolderChat_policy_addDropPolicyDependent_reForm}               xpath://input[contains(@data-test-id,'202008240759300955170') and contains(@id,'3f0d21fa')] 
${chkBox_policyHolderChat_policy_addDropPolicyDependent_reAddFormOnSNG}       xpath://input[contains(@data-test-id,'202008240759300955170') and contains(@id,'82c74d34')] 
${chkBox_policyHolderChat_policy_addDropPolicyDependent_reAddForm}            xpath://input[contains(@data-test-id,'202008240759300955170') and contains(@id,'5f5194b1')] 
${fld_policyHolderChat_policy_addDropPolicyDependent_escalatePriorAdd}        xpath://textarea[contains(@data-test-id,'202008210632580776814') and contains(@name,'EscalateAddPersonComments')] 
${fld_policyHolderChat_policy_addDropPolicyDependent_escalatePriorDrop}       xpath://textarea[contains(@data-test-id,'202008270439210697165') and contains(@name,'EscalateDropPersonComments')] 
${btn_policyHolderChat_policy_addDropPolicyDependent_done}                    xpath://button[contains(@data-test-id,'202008210621500076109') and contains(text(),'Done')] 
${fld_policyHolderChat_policy_addDropPolicyDependent_emailAddress}            ${fld_policyHolderChat_taskAddressForm_emailAddress}
${btn_policyHolderChat_policy_addDropPolicyDependent_verifyAddress}           ${btn_policyHolderChat_taskForm_verifyAddress}
${btn_policyHolderChat_policy_addDropPolicyDependent_sendForm}                ${btn_policyHolderChat_taskForm_sendForm}
${btn_policyHolderChat_policy_addDropPolicyDependent_closeTask}               ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_policy_addDropPolicyDependent_exitTask}                ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_policy_addDropPolicyDependent_closeOnExitTask}         ${btn_policyHolderChat_taskForm_exitClose}
${chkBox_policyHolderChat_policy_addDropPolicyDependent_updateAfterSend}      ${chkBox_policyHolderChat_taskAddressForm_updateAfterSend}
${chkBox_policyHolderChat_policy_addDropPolicyDependent_omegaLite}            ${chkBox_policyHolderChat_taskAddressForm_omegaLite}

## TASK -- Cancel Policy
${btn_policyHolderChat_addTask_policy_cancelPolicy}                            xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Cancel Policy')]
${lbl_policyHolderChat_policy_cancelPolicy_sectionHeader}                      xpath://h2[contains(text(),'Cancel Policy')]
${dd_policyHolderChat_policy_cancelPolicy_policyNumber}                        xpath://select[contains(@data-test-id,'20200407115129021263151')]
${dd_policyHolderChat_policy_cancelPolicy_policyNumber_option}                 xpath://select[contains(@data-test-id,'20200407115129021263151')]//option[text()='dropDownOption']
${fld_policyHolderChat_policy_cancelPolicy_rejectionReason}                    xpath://input[contains(@data-test-id,'202004071524530015801000')]
${btn_policyHolderChat_policy_cancelPolicy_firstContinueTask}                  ${btn_policyHolderChat_taskForm_firstContinue}
${chkBox_policyHolderChat_policy_cancelPolicy_affordability}                   xpath://label[contains(@data-test-id,'2016072109335505834280') and contains(text(),'Affordability')] 
${chkBox_policyHolderChat_policy_cancelPolicy_claimNotProcessedTimely}         xpath://label[contains(@data-test-id,'2016072109335505834280') and contains(text(),'Claim not Processed timely')] 
${chkBox_policyHolderChat_policy_cancelPolicy_deniedClaims}                    xpath://label[contains(@data-test-id,'2016072109335505834280') and contains(text(),'Denied Claims')] 
${chkBox_policyHolderChat_policy_cancelPolicy_dissatisfiedWithClaimsPayout}    xpath://label[contains(@data-test-id,'2016072109335505834280') and contains(text(),'Dissatisfied with Claims Payout')] 
${chkBox_policyHolderChat_policy_cancelPolicy_noLongerNeedServices}            xpath://label[contains(@data-test-id,'2016072109335505834280') and contains(text(),'No Longer Need Services')] 
${chkBox_policyHolderChat_policy_cancelPolicy_notHappyWithServices}            xpath://label[contains(@data-test-id,'2016072109335505834280') and contains(text(),'Not Happy with Services')] 
${chkBox_policyHolderChat_policy_cancelPolicy_switchingToADifferentCompany}    xpath://label[contains(@data-test-id,'2016072109335505834280') and contains(text(),'Switching to a Different Company')] 
${fld_policyHolderChat_policy_cancelPolicy_additionalComments}                 xpath://textarea[contains(@data-test-id,'202004080624540475380222')]
${chkBox_policyHolderChat_policy_cancelPolicy_VROD}                            xpath://label[@data-test-id='20200309161200099764190-Label' and contains(text(),'VROD')]
${btn_policyHolderChat_policy_cancelPolicy_closeTask}                          ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_policy_cancelPolicy_exitTask}                           ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_policy_cancelPolicy_closeOnExitTask}                    xpath://button[contains(@data-test-id,'20150216042226087912495') and (text() = 'Close')]
${btn_policyHolderChat_policy_cancelPolicy_secondExitTask}                     xpath://button[@data-test-id='20200309165727048430241' and contains(text(),'Exit')]
${radioBtn_policyHolderChat_policy_retentionSuccssful}                         xpath://label[contains(text(),'Successful')]
${radioBtn_policyHolderChat_policy_retentionUnsuccssful}                       xpath://label[contains(text(),'Unsuccessful')]
${radioBtn_policyHolderChat_policy_retentionNot Applicable}                    xpath://label[contains(text(),'Not Applicable')] 
${dd_policyHolderChat_policy_cancelPolicy_categories}                          xpath://select[contains(@name,'$PpyWorkPage$pCategoriesDES')] 
${dd_policyHolderChat_policy_cancelPolicy_categories_option}                   xpath://select[contains(@name,'$PpyWorkPage$pCategoriesDES')]//option[text()='dropDownOption'] 
${dd_policyHolderChat_policy_cancelPolicy_subCategories}                       xpath://select[contains(@name,'$PpyWorkPage$pSubCategoriesDES')] 
${dd_policyHolderChat_policy_cancelPolicy_subCategories_option}                xpath://select[contains(@name,'$PpyWorkPage$pSubCategoriesDES')]//option[text()='dropDownOption'] 
${btn_policyHolderChat_policy_cancelPolicy_submit}                             xpath://button[contains(@data-test-id,'2015021306370007097332') and contains(text(),'Submit')] 



## TASK -- Change Beneficiary
${btn_policyHolderChat_addTask_policy_changeBeneficiary}               xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Change Beneficiary')]
${lbl_policyHolderChat_policy_changeBeneficiary_sectionHeader}         xpath://h2[contains(text(),'Change Policy Beneficiary')]
${dd_policyHolderChat_policy_changeBeneficiary_policyNumber}           xpath://select[contains(@data-test-id,'202008040322470104957')]
${dd_policyHolderChat_policy_changeBeneficiary_policyNumber_option}    xpath://select[contains(@data-test-id,'202008040322470104957')]//option[text()='dropDownOption']
${btn_policyHolderChat_policy_changeBeneficiary_firstContinueTask}     ${btn_policyHolderChat_taskForm_firstContinue}
${btn_policyHolderChat_policy_changeBeneficiary_secondContinueTask}    ${btn_policyHolderChat_taskForm_secondContinue}
${fld_policyHolderChat_policy_changeBeneficiary_ssn}                   ${fld_policyHolderChat_taskAddressForm_ssn}
${fld_policyHolderChat_policy_changeBeneficiary_eSignEmailAddress}     ${fld_policyHolderChat_taskAddressForm_eSignEmailAddress}
${fld_policyHolderChat_policy_changeBeneficiary_emailAddress}          ${fld_policyHolderChat_taskAddressForm_emailAddress}
${btn_policyHolderChat_policy_changeBeneficiary_verifyAddress}         ${btn_policyHolderChat_taskForm_verifyAddress}
${chkBox_policyHolderChat_policy_changeBeneficiary_updateAfterSend}    ${chkBox_policyHolderChat_taskAddressForm_updateAfterSend}
${chkBox_policyHolderChat_policy_changeBeneficiary_omegaLite}          ${chkBox_policyHolderChat_taskAddressForm_omegaLite}
${btn_policyHolderChat_policy_changeBeneficiary_closeTask}             ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_policy_changeBeneficiary_exitTask}              xpath://button[contains(@data-test-id,'202007240822190930118')]
${btn_policyHolderChat_policy_changeBeneficiary_closeOnExitTask}       ${btn_policyHolderChat_taskForm_exitClose}

## TASK -- Change Policyholder Name
${btn_policyHolderChat_addTask_policy_changePolicyholderName}                 xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Change Policyholder Name')]
${lbl_policyHolderChat_policy_changePolicyholderName_sectionHeader}           xpath://h2[contains(text(),'Change Policyholder Name')]
${radioBtn_policyHolderChat_policy_changePolicyholderName_nameMisspelled}     ${radioBtn_policyHolderChat_policy_nameMisspelled}
${radioBtn_policyHolderChat_policy_changePolicyholderName_legalChange}        ${radioBtn_policyHolderChat_policy_legalChange}
${radioBtn_policyHolderChat_policy_changePolicyholderName_priorChangeForm}    ${radioBtn_policyHolderChat_policy_priorChangeForm}
${chkBox_policyHolderChat_policy_changePolicyholderName_VROD}                 ${chkBox_policyHolderChat_taskAddressForm_VROD}
${chkBox_policyHolderChat_policy_changePolicyholderName_ManualVROD}           ${chkBox_policyHolderChat_taskAddressForm_ManualVROD}      
${fld_policyHolderChat_policy_changePolicyholderName_firstName}               ${fld_policyHolderChat_taskAddressForm_firstName}
${fld_policyHolderChat_policy_changePolicyholderName_middleName}              ${fld_policyHolderChat_taskAddressForm_middleName}
${fld_policyHolderChat_policy_changePolicyholderName_lastName}                ${fld_policyHolderChat_taskAddressForm_lastName}
${btn_policyHolderChat_policy_changePolicyholderName_submit}                  ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_policy_changePolicyholderName_firstContinueTask}       ${btn_policyHolderChat_taskForm_firstContinue}
${fld_policyHolderChat_policy_changePolicyholderName_ssn}                     ${fld_policyHolderChat_taskAddressForm_ssn}
${fld_policyHolderChat_policy_changePolicyholderName_eSignEmailAddressSSN}    ${fld_policyHolderChat_taskAddressForm_eSignEmailAddress}
${fld_policyHolderChat_policy_changePolicyholderName_emailAddress}            ${fld_policyHolderChat_taskAddressForm_emailAddress}
${btn_policyHolderChat_policy_changePolicyholderName_verifyAddress}           ${btn_policyHolderChat_taskForm_verifyAddress}
${chkBox_policyHolderChat_policy_changePolicyholderName_updateAfterSend}      ${chkBox_policyHolderChat_taskAddressForm_updateAfterSend}
${chkBox_policyHolderChat_policy_changePolicyholderName_omegaLite}            ${chkBox_policyHolderChat_taskAddressForm_omegaLite}
${fld_policyHolderChat_policy_changePolicyholderName_escalationComment}       xpath://textarea[contains(@name,'$pComments')]
${btn_policyHolderChat_policy_changePolicyholderName_escalate}                xpath://button[contains(@data-test-id,'2015021306370007097332') and contains(text(),'Escalate')]
${btn_policyHolderChat_policy_changePolicyholderName_closeTask}               ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_policy_changePolicyholderName_exitTask}                ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_policy_changePolicyholderName_closeOnExitTask}         ${btn_policyHolderChat_taskForm_exitClose}

## TASK -- Order Duplicate Policy
${btn_policyHolderChat_addTask_policy_orderDuplicatePolicy}               xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Order Duplicate Policy')]
${lbl_policyHolderChat_policy_orderDuplicatePolicy_sectionHeader}         xpath://h2[contains(text(),'Order Duplicate Policy')]
${fld_policyHolderChat_policy_orderDuplicatePolicy_emailAddress}          ${fld_policyHolderChat_taskAddressForm_emailAddress}
${chkBox_policyHolderChat_policy_orderDuplicatePolicy_addressVerified}    ${chkBox_policyHolderChat_taskAddressForm_addressVerified}
${chkBox_policyHolderChat_policy_orderDuplicatePolicy_VROD}               ${chkBox_policyHolderChat_taskAddressForm_VROD}
${btn_policyHolderChat_policy_orderDuplicatePolicy_firstContinueTask}     ${btn_policyHolderChat_taskForm_firstContinue}    
${btn_policyHolderChat_policy_orderDuplicatePolicy_secondContinueTask}    ${btn_policyHolderChat_taskForm_secondContinue}    
${btn_policyHolderChat_policy_orderDuplicatePolicy_secondSubmit}          ${btn_policyHolderChat_taskForm_secondSubmit}
${btn_policyHolderChat_policy_orderDuplicatePolicy_submit}                ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_policy_orderDuplicatePolicy_closeTask}             ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_policy_orderDuplicatePolicy_exitTask}              ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_policy_orderDuplicatePolicy_closeOnExitTask}       ${btn_policyHolderChat_taskForm_exitClose}

## TASK -- Policy Inquiry
${btn_policyHolderChat_addTask_policy_policyInquiry}                       xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Policy Number Inquiry')]
${lbl_policyHolderChat_policy_policyInquiry_sectionHeader}                 xpath://h2[contains(text(),'Provide Policy Number')]
${chkBox_policyHolderChat_policy_policyInquiry_authorizeRequestCode}       xpath://label[contains(@data-test-id,'2020031205492409426379') and contains(text(),'Check to Authorize and Request Code')] 
${fld_policyHolderChat_policy_policyInquiry_mobileNumber}                  xpath://input[contains(@data-test-id,'20200312055137012587852')]
${chkBox_policyHolderChat_policy_policyInquiry_statusManuallyRequested}    xpath://label[contains(@data-test-id,'202005010521500799106235') and contains(text(),'S1 Status Manually Requested')] 
${btn_policyHolderChat_policy_policyInquiry_requestCode}                   ${btn_policyHolderChat_taskForm_requestCode}
${btn_policyHolderChat_policy_policyInquiry_firstContinueTask}             ${btn_policyHolderChat_taskForm_firstContinue}
${fld_policyHolderChat_policy_policyInquiry_closingComments}               xpath://textarea[contains(@name,'Note') and contains(@data-test-id,'202004210635070147229316')]
${btn_policyHolderChat_policy_policyInquiry_submit}                        xpath://button[contains(@data-test-id,'202003120553410387146725') and contains(text(),'Submit')]
${btn_policyHolderChat_policy_policyInquiry_close}                         xpath://button[contains(@data-test-id,'202003120553410387146725') and contains(text(),'Close')]
${btn_policyHolderChat_policy_policyInquiry_verify}                        ${btn_policyHolderChat_taskForm_verify}
${btn_policyHolderChat_policy_policyInquiry_closeTask}                     ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_policy_policyInquiry_exitTask}                      xpath://button[contains(@data-test-id,'202003120553410386142491')]
${btn_policyHolderChat_policy_policyInquiry_closeOnExitTask}               ${btn_policyHolderChat_taskForm_exitClose}

## TASK -- Reinstate Policy
${btn_policyHolderChat_addTask_policy_reinstatePolicy}               xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Reinstate Policy')]
${lbl_policyHolderChat_policy_reinstatePolicy_sectionHeader}         xpath://h2[contains(text(),'Reinstate Policy')]
${btn_policyHolderChat_policy_reinstatePolicy_firstContinueTask}     ${btn_policyHolderChat_taskForm_firstContinue}
${btn_policyHolderChat_policy_reinstatePolicy_secondContinueTask}    ${btn_policyHolderChat_taskForm_secondContinue}
${btn_policyHolderChat_policy_reinstatePolicy_verifyAddress}         ${btn_policyHolderChat_taskForm_verifyAddress}
${chkBox_policyHolderChat_policy_reinstatePolicy_omegaLite}          ${chkBox_policyHolderChat_taskAddressForm_omegaLite}
${btn_policyHolderChat_policy_reinstatePolicy_attachForm}            xpath://button[contains(@data-test-id,'202008240710220715693')]
${btn_policyHolderChat_policy_reinstatePolicy_modalSelectFiles}      xpath://input[(@type='file')]
${fld_policyHolderChat_policy_reinstatePolicy_modalFileDropZone}     xpath://div[@id='modalOverlay']//div[(@id='pzDragDrop')]
${btn_policyHolderChat_policy_reinstatePolicy_modalAttach}           xpath://button[contains(@id,'ModalButtonSubmit')]
${btn_policyHolderChat_policy_reinstatePolicy_closeTask}             ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_policy_reinstatePolicy_exitTask}              ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_policy_reinstatePolicy_closeOnExitTask}       ${btn_policyHolderChat_taskForm_exitClose}


## Dialog Content
## ---   Add / Drop Policy Dependent   --- ##
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent}                       ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_completeForm_txt}      You will need to complete an Add or Drop form before we can process your change.
...    ${SPACE}Forms can be accessed by logging in to your Policyholder portal on MyAflac.com or I can have the form sent to you by mail or by email.
...    ${SPACE}How would you like to proceed?
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_inProgress_txt}        ${lbl_policyHolderChat_dialogContent_inProgress_txt}
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_formsDelivered_txt}    ${lbl_policyHolderChat_dialogContent_formsDelivered_txt}
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_uspsDelivery_txt}      ${lbl_policyHolderChat_dialogContent_uspsDelivery_txt}
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_sentEmail_txt}         Ok, an email with the forms you requested has been sent out.${SPACE}${SPACE} Please be sure to check your Spam folder if you don't see it in a few minutes.${SPACE} Is there anything else I can help you with today?
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_assistance_txt}        ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_canceledTask_txt}      ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_claimWrapUp_txt}       ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_escalate_txt}          Ok, I've escalated this for our Policy Services team to look into.${SPACE} Is there anything else I can help you with today?  
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_addDropEscalateSentEmail_txt}    Ok, I've escalated this for our Policy Services team to look into.${SPACE}${SPACE} You should also be receiving an email with forms you requested.${SPACE}${SPACE} Please be sure to check your Spam folder if you don't see it in a few minutes.${SPACE} Is there anything else I can help you with today? 
${lbl_policyHolderChat_policy_addDropPolicyDependent_dialogContent_addDropEscalateSentUSPS_txt}     Ok, I've escalated this for our Policy Services team to look into.${SPACE}${SPACE} Also, the forms${SPACE} you requested will be mailed out in the next business day.${SPACE} Depending upon where you live, it may take up to 7 days for you to receive it.${SPACE} Is there anything else I can help you with today? 

## ---   Cancel Policy   --- ##
${lbl_policyHolderChat_policy_cancelPolicy_dialogContent}                                 ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_policy_cancelPolicy_dialogContent_cancelAPolicy_txt}               Which policy are you looking to cancel?
${lbl_policyHolderChat_policy_cancelPolicy_dialogContent_cancelPolicyReason_txt}          Can you tell me your reasons for wanting to cancel your policy?
${lbl_policyHolderChat_policy_cancelPolicy_dialogContent_confirmCancelPolicy_txt}         I need to record you authorizing me to cancel your INTENSIVE CARE policy. Do I have your approval to do so?
${lbl_policyHolderChat_policy_cancelPolicy_dialogContent_assistance_txt}                  ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_policy_cancelPolicy_dialogContent_canceledTask_txt}                ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_policy_cancelPolicy_dialogContent_claimWrapUp_txt}                 ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_policy_cancelPolicy_dialogContent_cancelPolicyConfirmation_txt}    A request to cancel your policy effective as of 12/29/2026 has been submitted. You'll receive notification from Aflac confirming this action when it has been completed. If there is any refund owed to you, it will be mailed out in approximately three weeks

## ---   Change Beneficiary  --- ##
${lbl_policyHolderChat_policy_changeBeneficiary_dialogContent}                                ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_policy_changeBeneficiary_dialogContent_changePolicyBeneficiary_txt}    Which policy would you like to have the beneficiary changed?
${lbl_policyHolderChat_policy_changeBeneficiary_dialogContent_inProgress_txt}                 ${lbl_policyHolderChat_dialogContent_inProgress_txt}
${lbl_policyHolderChat_policy_changeBeneficiary_dialogContent_uspsDelivery_txt}               Ok, the claim form(s)${SPACE} you requested will be mailed out in the next business day. Depending upon where you live, it may take up to 7 days for you to receive it.${SPACE} Is there anything else I can help you with today?
${lbl_policyHolderChat_policy_changeBeneficiary_dialogContent_assistance_txt}                 ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_policy_changeBeneficiary_dialogContent_canceledTask_txt}               ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_policy_changeBeneficiary_dialogContent_claimWrapUp_txt}                ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_policy_changeBeneficiary_dialogContent_sentEmail_txt}                  An email with the Add Policy Beneficiary form was sent out to the email address you provided. Please be sure to check your Spam folder if you don't see it in a few minutes. Is there anything else I can help you with today?
${lbl_policyHolderChat_policy_changeBeneficiary_dialogContent_electronicForm_txt}             An electronic Add Policy Beneficiary form has been sent out the email address you provided.${SPACE}${SPACE} Please be sure to check your Spam folder if you don't see it in a few minutes.${SPACE} Is there anything else I can help you with today?
${lbl_policyHolderChat_policy_changeBeneficiary_dialogContent_emailBeneficiaryForm_txt}       I can email you the Add Policy Beneficiary form which you can electronically fill out and sign 
...    OR you can print as a blank form, fill it out and then return it to us.${SPACE} And if you don't have email, this form can also be sent to you via US Mail..${SPACE} Which method would you prefer? 

## ---   Change Policyholder Name   --- ##
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent}                            ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_nameChange_txt}             May I know the reason for the change?${SPACE}(Ex. Misspelled Name, Marriage, Divorce etc.,${SPACE})
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_misspelled_txt}             I need to record you authorizing me to do this name change. Do I have your approval to do so?
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_legalChangeForm_txt}        You will need to complete a Change form before we can process your name change. I can email an electronic version of it for you to  fill out online and sign 
...    OR I can email you a blank form for you to print, fill out and return it to us. And if you don't have email, this form can also be sent to you via US Mail.. Which method would you prefer?
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_submitted_txt}              Ok, I submitted your corrected name for update. Is there anything else I can assist you with?
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_inProgress_txt}             ${lbl_policyHolderChat_dialogContent_inProgress_txt}
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_uspsDelivery_txt}           Ok, the form(s) you requested will be mailed out in the next business day. Depending upon where you live, it may take up to 7 days for you to receive it. Is there anything else I can help you with today?
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_initialRequest_txt}         Can you give me some additional information on your initial request?
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_assistance_txt}             ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_canceledTask_txt}           ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_claimWrapUp_txt}            ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_policy_changePolicyholderName_dialogContent_changeNameSubmitted_txt}    Thank you for the information, I submitted your request to have our policy team review it. Is there anything else I can assist you with today?

## ---   Order Duplicate Policy   --- ##
${lbl_policyHolderChat_policy_orderDuplicatePolicy_dialogContent_proceed_txt}         You can get a copy of your policy by logging in to your Policyholder portal on MyAflac.com or I can have a copy sent to you by mail. ${SPACE}If you need assistance logging 
...    and accessing your policy in to myAflac, I can send instructions to you via your email address. ${SPACE}How would you like to proceed?
${lbl_policyHolderChat_policy_orderDuplicatePolicy_dialogContent}                     ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_policy_orderDuplicatePolicy_dialogContent_emailInfo_txt}       ${lbl_policyHolderChat_dialogContent_emailInfo_txt}
${lbl_policyHolderChat_policy_orderDuplicatePolicy_dialogContent_addressInfo_txt}     ${lbl_policyHolderChat_dialogContent_addressInfo_txt}
${lbl_policyHolderChat_policy_orderDuplicatePolicy_dialogContent_wantCopy_txt}        ${SPACE}Do you want a copy for any of${SPACE} your other polices besides your ACCIDENT policy?
${lbl_policyHolderChat_policy_orderDuplicatePolicy_dialogContent_USPSCopy_txt}        A copy of your policy will be mailed out to you in the next business day.${SPACE} Depending upon where you live, it may take up to 7 days for you to receive it.${SPACE}
${lbl_policyHolderChat_policy_orderDuplicatePolicy_dialogContent_emailSent_txt}       Ok, I've sent you an email with instructions on how to login to MyAflac and access your policy.
${lbl_policyHolderChat_policy_orderDuplicatePolicy_dialogContent_assistance_txt}      ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_policy_orderDuplicatePolicy_dialogContent_canceledTask_txt}    ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_policy_orderDuplicatePolicy_dialogContent_claimWrapUp_txt}     ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}

## ---   Policy Inquiry   --- ##
${lbl_policyHolderChat_policy_policyInquiry_dialogContent}                                 ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_policyInquiryPrivacy_txt}        Due to security guidelines in place, you must go through an additional level of identity verification, which is a single-use access code texted to you and provided back verbally. You authorize Aflac to use the phone number you provided to verify your identity via One-Time Password via SMS text message. 
...  If a One-Time Password is sent, mobile messaging rates may apply. Do you authorize Aflac to send this SMS message?
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_firstInvalidPhoneNumber_txt}     The phone number you provided couldn't be validated in the system. Do you have any other phone number? 
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_secondInvalidPhoneNumber_txt}    I'm sorry, I am still having trouble validating phone number and therefore I'm unable to provide you with your policy number at this time.${SPACE} 
...  Please wait while I notify Policy Services about this.
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_validPhoneNumber_txt}            Let me know when you receive the code on your phone. 
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_phoneNumberNotValidated_txt}     I'm sorry but we're not able to successfully authenticate you and therefore I'm unable to provide you with your policy number at this time. 
...  Please hold on for a moment while I notify Policy Services about this.
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_phoneNumberValidated_txt}        Please find the Policy Number details. Is there anything else I can help you with today?
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_letterFromPolicyServices_txt}    Ok, you'll be receive a letter from Policy Services explaining how to correct this issue.
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_help_txt}                        ${lbl_policyHolderChat_dialogContent_furtherHelp_txt}
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_assistance_txt}                  ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_canceledTask_txt}                ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_policy_policyInquiry_dialogContent_claimWrapUp_txt}                 ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}

## ---   Reinstate Policy   --- ##
${lbl_policyHolderChat_policy_reinstatePolicy_dialogContent}                              ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_policy_reinstatePolicy_dialogContent_completeReinstateForm_txt}    You will need to complete a Reinstatement form and pay any back due premium amounts before we can reinstate your policy. 
...  Forms can be accessed by logging in to your Policyholder portal on MyAflac.com or I can have the form sent to you by email. How would you like to proceed?
${lbl_policyHolderChat_policy_reinstatePolicy_dialogContent_inProgress_txt}               ${lbl_policyHolderChat_dialogContent_inProgress_txt}
${lbl_policyHolderChat_policy_reinstatePolicy_dialogContent_formsSent_txt}                Ok, the forms${SPACE} you requested will be mailed out in the next business day. Depending upon where you live, it may take up to 7 days for you to receive it. Is there anything else I can help you with today?
${lbl_policyHolderChat_policy_reinstatePolicy_dialogContent_assistance_txt}               ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_policy_reinstatePolicy_dialogContent_canceledTask_txt}             ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_policy_reinstatePolicy_dialogContent_claimWrapUp_txt}              ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}


* Keywords
Check to see if the mobile number has been validated on the policyInquiry screen of the policy section
    Wait for pega masking icon to complete
    Register Keyword To Run On Failure    Do Nothing
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${chkBox_policyHolderChat_policy_policyInquiry_statusManuallyRequested}    timeout=${sTimeout}
    IF    '${status}'=='True'
        Select the statusManuallyRequested checkbox on the policyInquiry screen in the policy section
        Verify that the phoneNumberNotValidated dialog content is displayed on the policyInquiry screen of the policy section
        Click on the firstContinueTask button on the policyInquiry screen of the policy section
        Enter 'Mobile Number Not Manually Verified' in the closingComments field on policyInquiry screen in the policy section
        Click on the submit button on the policyInquiry screen of the policy section
    ELSE 
        Verify that the phoneNumberValidated dialog content is displayed on the policyInquiry screen of the policy section
        Click on the close button on the policyInquiry screen of the policy section
    END
    Verify that the help dialog content is displayed on the policyInquiry screen of the policy section
    Click on the closeTask button on the appealDeniedClaim screen of the claim section

Verify Policy File Status is ${FileStatus}
    Wait for pega masking icon to complete
    ${expectedText}=    Set variable    ${FileStatus}
    Wait Until Element Is Visible    ${PolicyFileStatus}    timeout=${mTimeout}
    ${actualText}    Get Text    ${PolicyFileStatus}
    Should contain    ${actualText}    ${expectedText} 

Verify the suspense code details in policy header section
    [Arguments]    ${suspenseCode}
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${lbl_policyHolderChat_policy_suspenseCodeValue}    timeout=${mTimeout}
    Scroll button or label into view    ${lbl_policyHolderChat_policy_suspenseCodeValue}
    ${actualText}    GetText    ${lbl_policyHolderChat_policy_suspenseCodeValue}
    ${expectedText}    Convert To String    ${suspenseCode}
    Should Be Equal    ${actualText}    ${expectedText}

Enter random string in the ${textBox} field on ${taskOption} screen in the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    1s
    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}}    timeout=${mTimeout}    
    ${inputText} =  Generate Random String  1  [LETTERS]
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_${textBox}}    ${inputText}    clear=True
    Sleep    1s
    Press Keys    None    TAB
    Sleep    2s  

Enter '${inputText}' into the ssn field on changeBeneficiary screen in the policy section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_policyHolderChat_policy_changeBeneficiary_ssn}    timeout=${mTimeout}  
    Clear Element Text    ${fld_policyHolderChat_policy_changeBeneficiary_ssn}
    sleep    2s
    Input Text    ${fld_policyHolderChat_policy_changeBeneficiary_ssn}    ${inputText}    clear=True
    Sleep    2s
    Press Keys    None    TAB
    Sleep    2s
  