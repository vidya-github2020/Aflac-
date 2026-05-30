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
## C360 - Claim tab
${tab_PolicyHolderChat_Claim}    xpath://h3[text()='Claim']

## C360 - Claim tab -section
${sectionheader_claim_ClaimChecks}    xpath://div[contains(text(),'Claim Checks')]
${sectionheader_claim_ClaimList}    xpath://div[contains(text(),'Claims List')]
${sectionheader_claim_ClaimBenefits}    xpath://div[contains(text(),'Claim Benefits')]
 

## Email / USPS Form
${radioBtn_policyHolderChat_claim_sendViaEmail}     ${radioBtn_policyHolderChat_taskAddressForm_sendViaEmail}
${radioBtn_policyHolderChat_claim_sendViaUsps}      ${radioBtn_policyHolderChat_taskAddressForm_sendViaUsps} 
${fld_policyHolderChat_claim_claimName}             ${fld_policyHolderChat_taskAddressForm_claimName}
${fld_policyHolderChat_claim_address1}              ${fld_policyHolderChat_taskAddressForm_address1}
${fld_policyHolderChat_claim_address2}              ${fld_policyHolderChat_taskAddressForm_address2}
${fld_policyHolderChat_claim_city}                  ${fld_policyHolderChat_taskAddressForm_city}
${dd_policyHolderChat_claim_state}                  ${dd_policyHolderChat_taskAddressForm_state}
${dd_policyHolderChat_claim_state_option}           ${dd_policyHolderChat_taskAddressForm_state_option}
${fld_policyHolderChat_claim_zipCode}               ${fld_policyHolderChat_taskAddressForm_zipCode}

${fld_policyHolderChat_claim_exitComment}           ${fld_policyHolderChat_taskForm_exitComment}

## TASK -- Appeal Denied Claim
${btn_policyHolderChat_addTask_claim_appealDeniedClaim}               xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Appeal Denied Claim')]
${lbl_policyHolderChat_claim_appealDeniedClaim_sectionHeader}         xpath://h2[contains(text(),'Appeal Denied Claim')]
${fld_policyHolderChat_claim_appealDeniedClaim_emailAddress}          ${fld_policyHolderChat_taskAddressForm_emailAddress}
${btn_policyHolderChat_claim_appealDeniedClaim_verifyAddress}         ${btn_policyHolderChat_taskForm_verifyAddress}
${btn_policyHolderChat_claim_appealDeniedClaim_sendForm}              ${btn_policyHolderChat_taskForm_sendForm}
${btn_policyHolderChat_claim_appealDeniedClaim_firstContinueTask}     ${btn_policyHolderChat_taskForm_firstContinue}
${btn_policyHolderChat_claim_appealDeniedClaim_closeTask}             ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_claim_appealDeniedClaim_exitTask}              ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_claim_appealDeniedClaim_closeOnExitTask}       ${btn_policyHolderChat_taskForm_exitClose}
${btn_policyHolderChat_claim_sendClaimForm_submit}                    xpath:(//button[contains(@data-test-id,'2015021306370007097332') and contains(text(),'Submit')])[2]
${chkBox_policyHolderChat_claim_appealDeniedClaim_updateAfterSend}    ${chkBox_policyHolderChat_taskAddressForm_updateAfterSend}
${chkBox_policyHolderChat_claim_appealDeniedClaim_omegaLite}          ${chkBox_policyHolderChat_taskAddressForm_omegaLite}

## TASK -- Escalate Claim
${btn_policyHolderChat_addTask_claim_escalateClaim}                         xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Escalate Claim')]
${lbl_policyHolderChat_claim_escalateClaim_sectionHeader}                   xpath://h2[contains(text(),' Escalate Claim  ')]
${btn_policyHolderChat_claim_escalateClaim_submit}                          ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_claim_escalateClaim_closeTask}                       ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_claim_escalateClaim_exitTask}                        ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_claim_escalateClaim_closeOnExitTask}                 ${btn_policyHolderChat_taskForm_exitClose}
${fld_policyHolderChat_claim_escalateClaim_note}                            ${fld_policyHolderChat_taskForm_notes}
${chkBox_policyHolderChat_claim_escalateClaim_providerDataNotApplicable}    xpath://input[contains(@data-test-id,'202105111507180441834') and contains(@name,'IsProviderDataApplicable')]
${fld_policyHolderChat_claim_escalateClaim_providerName}                    xpath://input[contains(@data-test-id,'202105111507180441451') and contains(@name,'ProviderName')]
${fld_policyHolderChat_claim_escalateClaim_providerContact}                 xpath://input[contains(@data-test-id,'202105111507180441583') and contains(@name,'ProviderContact')]
${fld_policyHolderChat_claim_escalateClaim_providerFax}                     xpath://input[contains(@data-test-id,'202105111507180442138') and contains(@name,'ProviderFax')]
${chkBox_policyHolderChat_claim_escalateClaim_priorBeelineSent}             xpath://input[contains(@data-test-id,'202105121452130171797') and contains(@name,'IsPriorBeelineSent')]
${fld_policyHolderChat_claim_escalateClaim_sendDate}                        xpath://img[contains(@data-test-id,'202105121702500476985-DatePicker')]
${fld_policyHolderChat_claim_escalateClaim_todayDate}                       xpath://a[@id='todayLink']
${fld_policyHolderChat_claim_escalateClaim_assignedTo}                      xpath://input[contains(@data-test-id,'202105121452130173556') and contains(@name,'AssignedTo')]
${chkBox_policyHolderChat_claim_escalateClaim_manuals}                      xpath://input[contains(@data-test-id,'202105121702500481226') and contains(@name,'Manuals')]
${chkBox_policyHolderChat_claim_escalateClaim_submittedDocumentation}       xpath://input[contains(@data-test-id,'202105121702500482289') and contains(@name,'SubmittedDocumentation')]
${chkBox_policyHolderChat_claim_escalateClaim_others}                       xpath://input[contains(@data-test-id,'202105121702500483474') and contains(@name,'Others')]

## TASK -- Order Duplicate EOB
${btn_policyHolderChat_addTask_claim_orderDuplicateEOB}                     xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Order Duplicate EOB')]
${lbl_policyHolderChat_claim_orderDuplicateEOB_sectionHeader}               xpath://h2[contains(text(),'Order Duplicate EOB')]
${btn_policyHolderChat_claim_orderDuplicateEOB_submit}                      ${btn_policyHolderChat_taskForm_submit}
${lbl_policyHolderChat_claim_orderDuplicateEOB_dialogContent_taskConfirmation_txt}    xpath://div[contains(@data-test-id,'2015031106000209843748')]
${btn_policyHolderChat_claim_orderDuplicateEOB_closeTask}             ${btn_policyHolderChat_taskForm_closeTask}

## TASK -- Review Denied Claim
${btn_policyHolderChat_addTask_claim_reviewDeniedClaim}                            xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Review Denied Claim')]
${lbl_policyHolderChat_claim_reviewDeniedClaim_sectionHeader}                      xpath://h2[contains(text(),'Review Denied Claim')]
${btn_policyHolderChat_claim_reviewDeniedClaim_submit}                             ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_claim_reviewDeniedClaim_closeTask}                          ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_claim_reviewDeniedClaim_exitTask}                           ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_claim_reviewDeniedClaim_closeOnExitTask}                    ${btn_policyHolderChat_taskForm_exitClose}
${fld_policyHolderChat_claim_reviewDeniedClaim_note}                               ${fld_policyHolderChat_taskForm_notes}
${opt_policyHolderChat_claim_reviewDeniedClaim_claimReason}                        xpath://select[contains(@data-test-id, '202004060526030645205414')]
${dd_policyHolderChat_claim_reviewDeniedClaim_claimReason_missedBenefit}           xpath://select[contains(@data-test-id, '202004060526030645205414')]//option[contains(@value, 'Missed Benefit')]     
${dd_policyHolderChat_claim_reviewDeniedClaim_claimReason_missingDocumentation}    xpath://select[contains(@data-test-id, '202004060526030645205414')]//option[contains(@value, 'Missing Documentation')]
${dd_policyHolderChat_claim_reviewDeniedClaim_claimReason_other}                   xpath://select[contains(@data-test-id, '202004060526030645205414')]//option[contains(@value, 'Other')]

## TASK -- Review Pended Claim
${btn_policyHolderChat_addTask_claim_reviewPendedClaim}                       xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Review Pended Claim')]
${lbl_policyHolderChat_claim_reviewPendedClaim_sectionHeader}                 xpath://h2[contains(text(),'Review Pended Claim')]
${btn_policyHolderChat_claim_reviewPendedClaim_submit}                        ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_claim_reviewPendedClaim_closeTask}                     ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_claim_reviewPendedClaim_exitTask}                      ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_claim_reviewPendedClaim_closeOnExitTask}               ${btn_policyHolderChat_taskForm_exitClose}
${fld_policyHolderChat_claim_reviewPendedClaim_note}                          ${fld_policyHolderChat_taskForm_notes}
${opt_policyHolderChat_claim_reviewPendedClaim_reason}                        xpath://select[contains(@data-test-id, '202004060526030645205414')]     
${dd_policyHolderChat_claim_reviewPendedClaim_reason_missingDocumentation}    xpath://select[contains(@data-test-id, '202004060526030645205414')]//option[contains(@value, 'Missing Documentation')]
${dd_policyHolderChat_claim_reviewPendedClaim_reason_other}                   xpath://select[contains(@data-test-id, '202004060526030645205414')]//option[contains(@value, 'Other')]

## TASK -- Send Claim Form
${btn_policyHolderChat_addTask_claim_sendClaimForm}                           xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Send Claim Form')]
${lbl_policyHolderChat_claim_sendClaimForm_sectionHeader}                     xpath://h2[contains(text(),'Send Claim Form')]
${fld_policyHolderChat_claim_sendClaimForm_emailAddress}                      ${fld_policyHolderChat_taskAddressForm_emailAddress}
${btn_policyHolderChat_claim_sendClaimForm_verifyAddress}                     ${btn_policyHolderChat_taskForm_verifyAddress}
${btn_policyHolderChat_claim_sendClaimForm_sendForm}                          ${btn_policyHolderChat_taskForm_sendForm}
${btn_policyHolderChat_claim_sendClaimForm_firstContinueTask}                 ${btn_policyHolderChat_taskForm_firstContinue}
${btn_policyHolderChat_claim_sendClaimForm_secondContinueTask}                ${btn_policyHolderChat_taskForm_secondContinue}
${btn_policyHolderChat_claim_sendClaimForm_thirdContinueTask}                 ${btn_policyHolderChat_taskForm_thirdContinue}
${btn_policyHolderChat_claim_sendClaimForm_closeTask}                         ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_claim_sendClaimForm_exitTask}                          ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_claim_sendClaimForm_closeOnExitTask}                   ${btn_policyHolderChat_taskForm_exitClose}
${chkBox_policyHolderChat_claim_sendClaimForm_boneMarrowDonerScreenForm}      xpath://tr[contains(@data-test-id,'202102220428230938654-R1')][1]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_cancerAnnualCareBenefitForm}    xpath://tr[contains(@data-test-id,'202102220428230938654-R2')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_cancerVaccineBenefitForm}       xpath://tr[contains(@data-test-id,'202102220428230938654-R3')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_claimsAuthorization}            xpath://tr[contains(@data-test-id,'202102220428230938654-R4')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_continuingDisability}           xpath://tr[contains(@data-test-id,'202102220428230938654-R5')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_dental}                         xpath://tr[contains(@data-test-id,'202102220428230938654-R6')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_disability(dueToInjury)}        xpath://tr[contains(@data-test-id,'202102220428230938654-R7')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_disability(dueToSickness)}      xpath://tr[contains(@data-test-id,'202102220428230938654-R8')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_homeHealthCare}                 xpath://tr[contains(@data-test-id,'202102220428230938654-R10')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_injury}                         xpath://tr[contains(@data-test-id,'202102220428230938654-R11')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_lifeBeneficiary'sStetement}     xpath://tr[contains(@data-test-id,'202102220428230938654-R12')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_lifeClaimsAuthorization}        xpath://tr[contains(@data-test-id,'202102220428230938654-R13')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_lifePhysician'sStetement}       xpath://tr[contains(@data-test-id,'202102220428230938654-R14')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_longTermCare}                   xpath://tr[contains(@data-test-id,'202102220428230938654-R15')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_sickness}                       xpath://tr[contains(@data-test-id,'202102220428230938654-R16')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_waiverOfPremium}                xpath://tr[contains(@data-test-id,'202102220428230938654-R17')]/td/div/input[contains(@data-ctl,'Checkbox')]
${chkBox_policyHolderChat_claim_sendClaimForm_updateAfterSend}                ${chkBox_policyHolderChat_taskAddressForm_updateAfterSend}
${chkBox_policyHolderChat_claim_sendClaimForm_omegaLite}                      ${chkBox_policyHolderChat_taskAddressForm_omegaLite}
${dd_policyHolderChat_claim_sendClaimForm_issueState}                         xpath://select[contains(@data-test-id,'202102221808480324409')]

## TASK -- Stop Payment
${btn_policyHolderChat_addTask_claim_stopPayment}                            xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Stop Payment')]
${lbl_policyHolderChat_claim_stopPayment_sectionHeader}                      xpath://h2[contains(text(),'Stop Payment')]
${btn_policyHolderChat_claim_stopPayment_submit}                             ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_claim_stopPayment_closeTask}                          ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_claim_stopPayment_exitTask}                           ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_claim_stopPayment_closeOnExitTask}                    ${btn_policyHolderChat_taskForm_exitClose}
${fld_policyHolderChat_claim_stopPayment_note}                               ${fld_policyHolderChat_taskForm_notes}
${btn_policyHolderChat_claim_stopPayment_checksDropDown}                     xpath://i[contains(@data-click,'searchWithMultiSelectButton')]
${btn_policyHolderChat_claim_stopPayment_checksFirstOption}                  xpath://div[contains(@class,'popover_multiselect-list')]//span[contains(@class,'ms-primary-option')]
${btn_policyHolderChat_claim_stopPayment_claimDropDown}                      xpath://a[@data-test-id='20200408031026048334']
${btn_policyHolderChat_claim_stopPayment_claimFirstOption}                   xpath://span[@data-test-id='2016072109335505834280' and contains(text(),133140)]
${opt_policyHolderChat_claim_stopPayment_claimReason}                        xpath://select[contains(@data-test-id, '202004060526030645205414')]     
${dd_policyHolderChat_claim_stopPayment_claimReason_mailedToWrongAddress}    xpath://select[contains(@data-test-id, '202004060526030645205414')]//option[contains(@value, 'Mailed to Wrong Address')]
${dd_policyHolderChat_claim_stopPayment_claimReason_lostInTheMail}           xpath://select[contains(@data-test-id, '202004060526030645205414')]//option[contains(@value, 'Lost in the Mail')]
${dd_policyHolderChat_claim_stopPayment_claimReason_neverReceived}           xpath://select[contains(@data-test-id, '202004060526030645205414')]//option[contains(@value, 'Never Received')]

## Dialog Content
## ---   Appeal Denied Claim   --- ##
${lbl_policyHolderChat_claim_appealDeniedClaim_dialogContent}                       ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_claim_appealDeniedClaim_dialogContent_formsDelivered_txt}    ${lbl_policyHolderChat_dialogContent_formsDelivered_txt}
${lbl_policyHolderChat_claim_appealDeniedClaim_dialogContent_inProgress_txt}        ${lbl_policyHolderChat_dialogContent_inProgress_txt}
${lbl_policyHolderChat_claim_appealDeniedClaim_dialogContent_uspsDelivery_txt}      ${lbl_policyHolderChat_dialogContent_uspsDelivery_txt}
${lbl_policyHolderChat_claim_appealDeniedClaim_dialogContent_sentClaimEmail_txt}    An email with a link to our Claim Appeal form has been emailed out to the address you provided. Please be sure to check your Spam folder if you don't see it in a few minutes.
${lbl_policyHolderChat_claim_appealDeniedClaim_dialogContent_assistance_txt}        ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_claim_appealDeniedClaim_dialogContent_canceledTask_txt}      ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_claim_appealDeniedClaim_dialogContent_claimWrapUp_txt}       ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}

## ---   Escalate Claim   --- ##
${lbl_policyHolderChat_claim_escalateClaim_dialogContent}                        ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_claim_escalateClaim_dialogContent_reviewEscaltion_txt}    Ok.${SPACE} let's get started.${SPACE} Let me review some of the data about your claim.
${lbl_policyHolderChat_claim_escalateClaim_dialogContent_escaltionSent_txt}      Ok, I sent a request to escalate review of your claim.${SPACE} Is there anything else I can help you with today?
${lbl_policyHolderChat_claim_escalateClaim_dialogContent_assistance_txt}         ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_claim_escalateClaim_dialogContent_canceledTask_txt}       ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_claim_escalateClaim_dialogContent_claimWrapUp_txt}        ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}

## ---   Order Duplicate EOB   --- ##
${lbl_policyHolderChat_claim_orderDuplicateEOB_dialogContent}                       ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_claim_orderDuplicateEOB_dialogContent_orderDuplicate_txt}    I'd be happy to send you a new copy of the EOB. This is also available for policyholders in MyAflac. If you need assistance logging in and accessing your policy in MyAflac, I can send instructions to you via your email address. How would you like to proceed?     
${lbl_policyHolderChat_claim_orderDuplicateEOB_dialogContent_assistance_txt}        ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_claim_orderDuplicateEOB_dialogContent_claimWrapUp_txt}       ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_claim_orderDuplicateEOB_dialogContent_txt}                   Order Duplicate EOB request has been submitted successfully

## ---   Review Denied Claim   --- ##
${lbl_policyHolderChat_claim_reviewDeniedClaim_dialogContent}                             ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_claim_reviewDeniedClaim_dialogContent_processedIncorrectly_txt}    Why do you think your claim was processed incorrectly?
${lbl_policyHolderChat_claim_reviewDeniedClaim_dialogContent_claimSubmitted_txt}          Your claim has been submitted for review.
${lbl_policyHolderChat_claim_reviewDeniedClaim_dialogContent_assistance_txt}              ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_claim_reviewDeniedClaim_dialogContent_canceledTask_txt}            ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_claim_reviewDeniedClaim_dialogContent_claimWrapUp_txt}             ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt} 

## ---   Review Pended Claim   --- ##
${lbl_policyHolderChat_claim_reviewPendedClaim_dialogContent}                       ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_claim_reviewPendedClaim_dialogContent_pendedClaim_txt}       Let me do a quick review to see why your claim is pended
${lbl_policyHolderChat_claim_reviewPendedClaim_dialogContent_claimSubmitted_txt}    Ok. I've sent a request to our Claims team that we have the additional information.
${lbl_policyHolderChat_claim_reviewPendedClaim_dialogContent_assistance_txt}        ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_claim_reviewPendedClaim_dialogContent_canceledTask_txt}      ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_claim_reviewPendedClaim_dialogContent_claimWrapUp_txt}       ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt} 

## ---   Send Claim Form   --- ##
${lbl_policyHolderChat_claim_sendClaimForm_dialogContent}                         ${lbl_policyHolderChat_dialogContent_messageBar}
#${lbl_policyHolderChat_claim_sendClaimForm_dialogContent_typeOfSubmission_txt}    There are a number of different claim forms. What type of claim are you going to submit?
${lbl_policyHolderChat_claim_sendClaimForm_dialogContent_typeOfSubmission_txt}    What email address would you like the claim form sent to?
${lbl_policyHolderChat_claim_sendClaimForm_dialogContent_formsDelivered_txt}      ${lbl_policyHolderChat_claim_appealDeniedClaim_dialogContent_formsDelivered_txt}
${lbl_policyHolderChat_claim_sendClaimForm_dialogContent_inProgress_txt}          ${lbl_policyHolderChat_dialogContent_inProgress_txt}
${lbl_policyHolderChat_claim_sendClaimForm_dialogContent_uspsDelivery_txt}        Ok, the claim form(s) you requested will be mailed out in the next business day. Depending upon where you live, it may take up to 7 days for you to receive it. Is there anything else I can help you with today?
${lbl_policyHolderChat_claim_sendClaimForm_dialogContent_sentClaimEmail_txt}      Ok, an email with the claim form(s) you requested has been sent out. Please be sure to check your Spam folder if you don't see it in a few minutes. Is there anything else I can help you with today?
${lbl_policyHolderChat_claim_sendClaimForm_dialogContent_assistance_txt}          ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_claim_sendClaimForm_dialogContent_canceledTask_txt}        Ok, I've canceled this action.. Is there anything else I can assist you with?
${lbl_policyHolderChat_claim_sendClaimForm_dialogContent_claimWrapUp_txt}         ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}

## ---   Stop Payment   --- ##
${lbl_policyHolderChat_claim_stopPayment_dialogContent}                             ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_claim_stopPayment_dialogContent_reissueCheck_txt}            Why do we need to reissue the check?
${lbl_policyHolderChat_claim_stopPayment_dialogContent_sentStopPaymentEmail_txt}    Ok. I've requested a stop payment on this check and a new one to be issued. Please allow 7-10 business days for a new check to be received by mail. Is there anything else I can help you with today? 
${lbl_policyHolderChat_claim_stopPayment_dialogContent_assistance_txt}              ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_claim_stopPayment_dialogContent_canceledTask_txt}            ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_claim_stopPayment_dialogContent_claimWrapUp_txt}             ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}


* Keywords
On the ${taskOption} screen select the ${dropdownOption} option from the ${dropdownField} field
    Wait Until Element Is Visible    ${opt_policyHolderChat_claim_${taskOption}_${dropdownField}}    timeout=${xxlTimeout}
    Run keyword    Click the policyHolderChat button    opt_policyHolderChat_claim_${taskOption}_${dropdownField}
    Sleep     1s
    Verify the drop down option is displayed   dd_policyHolderChat_claim_${taskOption}_${dropdownField}_${dropdownOption}
    Run keyword    Click the policyHolderChat button    dd_policyHolderChat_claim_${taskOption}_${dropdownField}_${dropdownOption}

Verify the State field defaults to ${issueState} on the ${taskOption} screen of the ${taskSection} section
    ${actualIssueStateText}    get element attribute    ${dd_policyHolderChat_${taskSection}_${taskOption}_issueState}    value
    Should Be Equal    ${actualIssueStateText}    ${issueState}