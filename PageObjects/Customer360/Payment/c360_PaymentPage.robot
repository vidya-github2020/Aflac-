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
## Payment Details
${payment_Iframe}                                           xpath://iframe[@id='dow']
${radioBtn_policyHolderChat_payment_eCheck}                 xpath://label[contains(text(),'E-Check (ACH Transfer)')]
${radioBtn_policyHolderChat_payment_creditCard}             xpath://label[contains(text(),'Credit card')]
${radioBtn_policyHolderChat_payment_debitCard}              xpath://label[contains(text(),'Debit Card')]
${fld_policyHolderChat_payment_accountHolderName}           xpath://input[contains(@id,'ACCOUNTHOLDERNAME')]
${fld_policyHolderChat_payment_routingNumber}               xpath://input[contains(@id,'REPCHECKROUTING') and @name ='REPCHECKROUTING']
${fld_policyHolderChat_payment_accountNumber}               xpath://input[contains(@id,'CHECKACCOUNT') and @name ='CHECKACCOUNT']
${fld_policyHolderChat_payment_confirmAccountNumber}        xpath://input[contains(@id,'CHECKACCOUNT2') and @name ='CHECKACCOUNT2']
${fld_policyHolderChat_payment_nameOnCard}                  xpath://input[@id='CCNAME']
${fld_policyHolderChat_payment_cardNumber}                  xpath://input[contains(@id,'REPACCOUNTNUMBER1') and contains(@name,'REPACCOUNTNUMBER1')]
${fld_policyHolderChat_payment_cvvCode}                     xpath://input[contains(@id,'CCCVV') and contains(@name,'CCCVV')]
${fld_policyHolderChat_payment_postalCode}                  xpath://input[contains(@id,'REPACCOUNTAVS') and contains(@name,'REPACCOUNTAVS')]
${dd_policyHolderChat_payment_expirationMonth}              xpath://select[contains(@id,'EXPMO')]
${dd_policyHolderChat_payment_expirationMonth_option}       xpath://select[contains(@id,'EXPMO')]//option[text()='dropDownOption']
${dd_policyHolderChat_payment_expirationYear}               xpath://select[contains(@id,'EXPYR')]
${dd_policyHolderChat_payment_expirationYear_option}        xpath://select[contains(@id,'EXPYR')]//option[text()='dropDownOption']
${radioBtn_policyHolderChat_payment_checkingAccount}        xpath://label[contains(text()'Checking Account')]
${radioBtn_policyHolderChat_payment_savingsAccount}         xpath://label[contains(text(),'Savings Account')]
${lbl_policyHolderChat_payment_problemRetrievingPayment}    xpath://div[contains(@data-test-id,'201808120943310957798')]//div[@class='flex-paragraph']
${policyHolderChat_payment_routingNumber_txt}               031000053
${policyHolderChat_payment_accountNumber_txt}               22222222
${policyHolderChat_payment_nameOnCard_txt}                  Test Account
${policyHolderChat_payment_cardNumber_txt}                  4111111111111111
${policyHolderChat_payment_expirationMonth_option_txt}      December
${policyHolderChat_payment_expirationYear_option_txt}       2030
${policyHolderChat_payment_cvvCode_txt}                     123
${policyHolderChat_payment_postalCode_txt}                  12345
${lbl_policyHolderChat_payment_paymentMethod}               xpath://h2[text()='Payment method']
${policyHolderChat_payment_accountHolderName_txt}           Test User
${policyHolderChat_payment_accountDetails_txt}              12


${policyHolderChat_payment_problemRetrievingPayment_txt}          There was a problem retrieving payment.${SPACE} 
...  Please make the payment through Omega 5 and check one of the Process Manually radio buttons when completed.
${lbl_policyHolderChat_payment_creditCardProcessAuthorize_txt}    I need to record you authorizing me to make the following changes regarding automatic payments... 
...  (read out changes on screen)${SPACE}${SPACE} Do I have your approval to do so?
${lbl_policyHolderChat_payment_debitCardProcessAuthorize_txt}     I need to record your answers to the following 2 questions... 
...  First, a payment in the amount of $18.50${SPACE} will be debited from your Debit ending in 1111 and applied to your CANCER policy.${SPACE} 
...  Second, would you like to set this up as a recurring payment ?

${lbl_policyHolderChat_payment_processPaymentComplete_txt}    Process for setting up auto payment has been done
${lbl_policyHolderChat_payment_eCheckPaymentComplete_txt}     Your eCheck payment has been submitted and should post to your account within 24 hours. Is there anything else I can assist you with? 
${lbl_policyHolderChat_payment_cardPaymentComplete_txt}       Your card payment has been submitted and should post to your account within 24 hours. 
...  Is there anything else I can assist you with?

${lbl_policyHolderChat_payment_dialogContent_notEligibleAssistance_txt}    How can I help you today, MARTHE M BOSS?
${fld_policyHolderChat_payment_exitComment}    ${fld_policyHolderChat_taskForm_exitComment}

## TASK -- Make A Payment
${btn_policyHolderChat_addTask_payment_makeAPayment}                  xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Make A Payment')]
${lbl_policyHolderChat_payment_makeAPayment_sectionHeader}            xpath://*[contains(@class,'heading_2') and contains(text(),'Payment')][last()]
${radioBtn_policyHolderChat_payment_amountDue}                        xpath://label[contains(@class,'radioLabel') and contains(text(),'Amount Due')]

${btn_policyHolderChat_payment_makeAPayment_proceedForPayment}        xpath://button[@data-test-id='202208171902400163820']
${btn_policyHolderChat_payment_makeAPayment_firstContinueTask}        ${btn_policyHolderChat_taskForm_firstContinue}
${fld_policyHolderChat_payment_makeAPayment_routingNumber}            ${fld_policyHolderChat_payment_routingNumber}
${fld_policyHolderChat_payment_makeAPayment_accountNumber}            ${fld_policyHolderChat_payment_accountNumber}
${fld_policyHolderChat_payment_makeAPayment_nameOnCard}               ${fld_policyHolderChat_payment_nameOnCard}
${fld_policyHolderChat_payment_makeAPayment_cardNumber}               ${fld_policyHolderChat_payment_cardNumber} 
${fld_policyHolderChat_payment_makeAPayment_cvvCode}                  ${fld_policyHolderChat_payment_cvvCode}
${dd_policyHolderChat_payment_makeAPayment_expirationMonth}           ${dd_policyHolderChat_payment_expirationMonth}
${dd_policyHolderChat_payment_makeAPayment_expirationMonth_option}    ${dd_policyHolderChat_payment_expirationMonth_option}
${dd_policyHolderChat_payment_makeAPayment_expirationYear}            ${dd_policyHolderChat_payment_expirationYear} 
${dd_policyHolderChat_payment_makeAPayment_expirationYear_option}     ${dd_policyHolderChat_payment_expirationYear_option}
${chkBox_policyHolderChat_payment_makeAPayment_VROD}                  xpath://input[contains(@type,'checkbox') and contains(@name,'VROD')]
${chkBox_policyHolderChat_payment_makeAPayment_omegaLite}             ${chkBox_policyHolderChat_taskAddressForm_omegaLite}
${btn_policyHolderChat_payment_makeAPayment_submit}                   xpath://button[@id='ckSubmit' and contains(text(),'Submit')]
${btn_policyHolderChat_payment_makeAPayment_closeTask}                ${btn_policyHolderChat_taskForm_closeTask}
${btn_policyHolderChat_payment_makeAPayment_exitTask}                 ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_payment_makeAPayment_closeOnExitTask}          ${btn_policyHolderChat_taskForm_exitClose}
${fld_policyHolderChat_payment_makeAPayment_paymentMethod}            ${lbl_policyHolderChat_payment_paymentMethod}
${btn_policyHolderChat_payment_makeAPayment_cancel}                   ${btn_policyHolderChat_taskForm_cancel}
${dd_policyHolderChat_payment_makeAPayment_accountType}               xpath://select[contains(@id,'ACCOUNTTYPE')]
${dd_policyHolderChat_payment_makeAPayment_accountType_option}        xpath://select[contains(@id,'ACCOUNTTYPE')]//option[text()='dropDownOption']
${fld_policyHolderChat_payment_makeAPayment_accountHolderName}        ${fld_policyHolderChat_payment_accountHolderName}
${fld_policyHolderChat_payment_makeAPayment_confirmAccountNumber}     ${fld_policyHolderChat_payment_confirmAccountNumber}
${fld_policyHolderChat_payment_makeAPayment_postalCode}               ${fld_policyHolderChat_payment_postalCode}
${fld_policyHolderChat_payment_makeAPayment_accountNameErrorMsg}           xpath://span[@id='ACCOUNTHOLDERNAME-error' and contains(text(),'Name contains invalid')]
${fld_policyHolderChat_payment_makeAPayment_accountNoErrorMsg}             xpath://span[@id='CHECKACCOUNT-error' and contains(text(),'Must be between 4')]
${fld_policyHolderChat_payment_makeAPayment_routingNoErrorMsg}             xpath://span[@id='REPCHECKROUTING-error' and contains(text(),'Must be 9 digits')]
${btn_policyHolderChat_payment_confirmPayment_submit}                      xpath:(//button[contains(@data-test-id,'2015021306370007097332') and contains(text(),'Submit')])[1]
${chkBox_policyHolderChat_payment_confirmPayment_ECheck}                   xpath://label[text()='E-Check (ACH Transfer)']
${fld_policyHolderChat_general_sendBeeline_paymentMethod}             ${lbl_policyHolderChat_payment_paymentMethod}
${dd_policyHolderChat_general_sendBeeline_accountType}                xpath://select[contains(@id,'ACCOUNTTYPE')]
${dd_policyHolderChat_general_sendBeeline_accountType_option}         xpath://select[contains(@id,'ACCOUNTTYPE')]//option[text()='dropDownOption']
${lbl_policyHolderChat_payment_makeAPayment_Inprogress_sectionHeader}    xpath://span[contains(@data-test-id,'2016011906264301103689') and contains(text(),'Payment')]
${btn_policyHolderChat_addTask_payment_makeAPayment_Inprogress}          xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Make A Payment')]

## TASK -- Setup Auto Payment
${btn_policyHolderChat_addTask_payment_setupAutoPayment}                     xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Setup AutoPayment')]
${lbl_policyHolderChat_payment_setupAutoPayment_sectionHeader}               xpath://div[contains(@data-ui-meta,'AutoPayEnroll')]//label[contains(@class,'heading_2')]
${btn_policyHolderChat_addTask_payment_setupAutoPaymentNotEligible}          ${btn_policyHolderChat_addTask_payment_setupAutoPayment}
${lbl_policyHolderChat_payment_setupAutoPaymentNotEligible_sectionHeader}    xpath://div[contains(@data-ui-meta,'AutoPayEnroll')]//span[contains(@class,'heading_2')]
${chkBox_policyHolderChat_payment_setupAutoPayment_policyOption}             xpath://input[contains(@data-test-id,'202012041342530759749')]
${dd_policyHolderChat_payment_setupAutoPayment_action}                       xpath://select[contains(@data-test-id,'20201204134102076617')]
${dd_policyHolderChat_payment_setupAutoPayment_action_option}                xpath://select[contains(@data-test-id,'20201204134102076617')]//option[@value='dropDownOption']
${btn_policyHolderChat_payment_setupAutoPayment_firstContinueTask}           ${btn_policyHolderChat_taskForm_firstContinue}
${dd_policyHolderChat_payment_setupAutoPayment_frequency}                    xpath://select[contains(@data-test-id,'202012041341020763796')]
${dd_policyHolderChat_payment_setupAutoPayment_frequency_option}             xpath://select[contains(@data-test-id,'202012041341020763796')]//option[text()='dropDownOption']
${dd_policyHolderChat_payment_setupAutoPayment_paymentDraftDay}              xpath://select[contains(@data-test-id,'202012040759120606675')]
${dd_policyHolderChat_payment_setupAutoPayment_paymentDraftDay_option}       xpath://select[contains(@data-test-id,'202012040759120606675')]//option[text()='dropDownOption']
${fld_policyHolderChat_payment_setupAutoPayment_routingNumber}               ${fld_policyHolderChat_payment_routingNumber}
${fld_policyHolderChat_payment_setupAutoPayment_accountNumber}               ${fld_policyHolderChat_payment_accountNumber}
${fld_policyHolderChat_payment_setupAutoPayment_nameOnCard}                  ${fld_policyHolderChat_payment_nameOnCard}
${fld_policyHolderChat_payment_setupAutoPayment_cardNumber}                  ${fld_policyHolderChat_payment_cardNumber} 
${fld_policyHolderChat_payment_setupAutoPayment_cvvCode}                     ${fld_policyHolderChat_payment_cvvCode}
${dd_policyHolderChat_payment_setupAutoPayment_expirationMonth}              ${dd_policyHolderChat_payment_expirationMonth}
${dd_policyHolderChat_payment_setupAutoPayment_expirationMonth_option}       ${dd_policyHolderChat_payment_expirationMonth_option}
${dd_policyHolderChat_payment_setupAutoPayment_expirationYear}               ${dd_policyHolderChat_payment_expirationYear} 
${dd_policyHolderChat_payment_setupAutoPayment_expirationYear_option}        ${dd_policyHolderChat_payment_expirationYear_option}
${chkBox_policyHolderChat_payment_setupAutoPayment_VROD}                     ${chkBox_policyHolderChat_taskAddressForm_VROD}
${chkBox_policyHolderChat_payment_setupAutoPayment_omegaLite}                ${chkBox_policyHolderChat_taskAddressForm_omegaLite}
${chkBox_policyHolderChat_payment_setupAutoPayment_updatePaymentDate}        xpath://input[contains(@class,'checkbox') and contains(@data-test-id,'20201119041925054645')]
${dd_policyHolderChat_payment_setupAutoPayment_paymentTerm}                  xpath://select[contains(@data-test-id,'202012100836500706862')]
${dd_policyHolderChat_payment_setupAutoPayment_paymentTerm_option}           xpath://select[contains(@data-test-id,'202012100836500706862')]//option[text()='dropDownOption']
${dd_policyHolderChat_payment_setupAutoPayment_paymentDate}                  xpath://select[contains(@data-test-id,'202012090323270433217')]
${dd_policyHolderChat_payment_setupAutoPayment_paymentDate_option}           xpath://select[contains(@data-test-id,'202012090323270433217')]//option[text()='dropDownOption']
${btn_policyHolderChat_payment_setupAutoPayment_submit}                      ${btn_policyHolderChat_taskForm_submit}
${btn_policyHolderChat_payment_setupAutoPayment_closeTask}                   ${btn_policyHolderChat_taskForm_exitClose}
${btn_policyHolderChat_payment_setupAutoPayment_exitTask}                    ${btn_policyHolderChat_taskForm_exit}
${btn_policyHolderChat_payment_setupAutoPayment_closeOnExitTask}             ${btn_policyHolderChat_taskForm_exitClose}
${btn_policyHolderChat_payment_setupAutoPayment_proceedForPayment}           ${btn_policyHolderChat_payment_makeAPayment_proceedForPayment}
${fld_policyHolderChat_payment_setupAutoPayment_paymentMethod}               ${lbl_policyHolderChat_payment_paymentMethod}

## Dialog Content
## ---   Make A Payment   --- ##
${lbl_policyHolderChat_payment_makeAPayment_dialogContent}                                   ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_policiesEligible_txt}              You're going to make a payment for your CANCER${SPACE} policy
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_makePaymentMethod_txt}             ${lbl_policyHolderChat_payment_makeAPayment_dialogContent_policiesEligible_txt}
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_creditCardProcessAuthorize_txt}    ${lbl_policyHolderChat_payment_creditCardProcessAuthorize_txt}
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_debitCardProcessAuthorize_txt}     ${lbl_policyHolderChat_payment_debitCardProcessAuthorize_txt}
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_authorizeMakeAPayment_txt}         I need to record your answers to the following question. Do you authorize${SPACE} me to submit a payment for $33.00${SPACE} from your Savings ending in 5399 be applied to your CANCER${SPACE}${SPACE} policy ?
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_processPaymentComplete_txt}        ${lbl_policyHolderChat_payment_processPaymentComplete_txt}
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_eCheckPaymentComplete_txt}         ${lbl_policyHolderChat_payment_eCheckPaymentComplete_txt}
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_policiesNotEligible_txt}           None of your policies are eligible to have a payment made on them. Is there anything else I can assist you with?
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_notEligibleAssistance_txt}         ${lbl_policyHolderChat_payment_dialogContent_notEligibleAssistance_txt}
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_policiesInProcess_txt}             Payment is already in process for your policy. Is there anything else I can assist you with?
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_inProcessAssistance_txt}           How can I help you today, FARMAN A COLLISTER?
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_assistance_txt}                    ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_canceledTask_txt}                  ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_payment_makeAPayment_dialogContent_claimWrapUp_txt}                   ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}
${lbl_policyHolderChat_payment_makeAPayment_accountNameErrorMsg_txt}                         Name contains invalid characters
${lbl_policyHolderChat_payment_makeAPayment_accountNoErrorMsg_txt}                           Must be between 4 and 17 digits
${lbl_policyHolderChat_payment_makeAPayment_routingNoErrorMsg_txt}                           Must be 9 digits

## ---   Setup Auto Payment   --- ##
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent}                                   ${lbl_policyHolderChat_dialogContent_messageBar}
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_policiesEligible_txt}              Policies which are currently disabled may be enabled for automatic payment. 
...  A policy that is currently enabled for automatic payment may be disabled, or have its payment method be changed to a different payment method.
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_setupPaymentMethod_txt}            How would you like to setup your payment. By eCheck, or with a Credit or Debit card?
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_creditCardProcessAuthorize_txt}    ${lbl_policyHolderChat_payment_creditCardProcessAuthorize_txt}
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_debitCardProcessAuthorize_txt}     ${lbl_policyHolderChat_payment_debitCardProcessAuthorize_txt}
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_processPaymentComplete_txt}        ${lbl_policyHolderChat_payment_processPaymentComplete_txt}
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_cardPaymentComplete_txt}           ${lbl_policyHolderChat_payment_cardPaymentComplete_txt}
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_policiesNotEligible_txt}           None of the active policies are eligible to have a payment made on them. Is there anything else I can assist you with?
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_notEligibleAssistance_txt}         ${lbl_policyHolderChat_payment_dialogContent_notEligibleAssistance_txt}
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_assistance_txt}                    ${lbl_policyHolderChat_dialogContent_furtherAssistance_txt}
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_canceledTask_txt}                  ${lbl_policyHolderChat_dialogContent_taskCanceled_txt}
${lbl_policyHolderChat_payment_setupAutoPayment_dialogContent_claimWrapUp_txt}                   ${lbl_policyHolderChat_dialogContent_claimWrapUp_txt}


* Keywords
Complete the ${paymentOption} Payment Details on the ${taskOption} screen of the ${taskSection} section
    ${newWindowHandle}    Get Window Handles   
    Switch Window    ${newWindowHandle}[1]
    Maximize Browser Window
    IF    '${taskOption}'=='makeAPayment'                
        IF    '${paymentOption}'=='eCheck'
            Register Keyword To Run On Failure    Do Nothing
            ${status}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${fld_policyHolderChat_${taskSection}_${taskOption}_paymentMethod}    timeout=${lTimeout}
            IF    '${status}'=='True'
                Wait Until Element Is Visible    ${radioBtn_policyHolderChat_payment_eCheck}    timeout=${mTimeout}
                Click Element     ${radioBtn_policyHolderChat_payment_eCheck}
                Verify the validation error message for eCheck Payment
                Complete eCheck payment details    ${taskOption}    ${taskSection}
                Sleep    3s
                Click Element     ${btn_policyHolderChat_payment_makeAPayment_cancel}
                Sleep    3s      
                #Complete payment verification for makeAPayment and authorize                           
            ELSE
                Verify the problem retrieving payment message is displayed
                #Run Keyword    Click on the firstContinueTask button on the ${taskOption} screen of the ${taskSection} section
            END    
        ELSE 
            IF    '${paymentOption}'=='creditCard'
                Wait Until Element Is Visible    ${radioBtn_policyHolderChat_payment_creditCard}    timeout=${mTimeout}
                Click Element     ${radioBtn_policyHolderChat_payment_creditCard}               
            ELSE IF    '${paymentOption}'=='debitCard'
                Wait Until Element Is Visible    ${radioBtn_policyHolderChat_payment_debitCard}     timeout=${mTimeout}
                Click Element     ${radioBtn_policyHolderChat_payment_debitCard}   
            END    
            Register Keyword To Run On Failure    Do Nothing
            Select Payment iframe
            ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_nameOnCard}    timeout=${sTimeout}
            IF    '${status}'=='True'
                Complete credit or debit card payment details    ${taskOption}    ${taskSection}
                Sleep    3s
                Click Element     ${btn_policyHolderChat_payment_makeAPayment_cancel}
                Sleep    3s 
                #Complete payment verification for makeAPayment and authorize    ${taskOption}    ${taskSection} 
            ELSE
                Verify the problem retrieving payment message is displayed
                #Run Keyword    Click on the firstContinueTask button on the ${taskOption} screen of the ${taskSection} section
            END
        END

    ELSE IF    '${taskOption}'=='setupAutoPayment'
        IF    '${paymentOption}'=='eCheck'
            Register Keyword To Run On Failure    Do Nothing
            ${status}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${fld_policyHolderChat_${taskSection}_${taskOption}_paymentMethod}    timeout=${sTimeout}
            IF    '${status}'=='True'
                Wait Until Element Is Visible    ${radioBtn_policyHolderChat_payment_eCheck}    timeout=${mTimeout}
                Click Element     ${radioBtn_policyHolderChat_payment_eCheck}
                Complete eCheck payment details    ${taskOption}    ${taskSection}
                Sleep    3s
                Click Element     ${btn_policyHolderChat_payment_makeAPayment_cancel} 
                #Complete payment verification for setupAutoPayment and authorize    ${taskOption}    ${taskSection} 
            ELSE 
                Verify the problem retrieving payment message is displayed
                #Run Keyword    Click on the firstContinueTask button on the ${taskOption} screen of the ${taskSection} section
            END
        ELSE
            IF    '${paymentOption}'=='creditCard'
                Wait Until Element Is Visible    ${radioBtn_policyHolderChat_payment_creditCard}    timeout=${mTimeout}
                Click Element     ${radioBtn_policyHolderChat_payment_creditCard}  
            ELSE IF    '${paymentOption}'=='debitCard'
                Wait Until Element Is Visible    ${radioBtn_policyHolderChat_payment_debitCard}    timeout=${mTimeout}
                Click Element     ${radioBtn_policyHolderChat_payment_debitCard}
            END

            Register Keyword To Run On Failure    Do Nothing
            Select Payment iframe
            ${status}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${fld_policyHolderChat_${taskSection}_${taskOption}_nameOnCard}    timeout=${sTimeout}
            IF    '${status}'=='True'
                Complete credit or debit card payment details    ${taskOption}    ${taskSection}
                Sleep    3s
                Click Element     ${btn_policyHolderChat_payment_makeAPayment_cancel}
                #Complete payment verification for setupAutoPayment and authorize    ${taskOption}    ${taskSection} 
            ELSE
                Verify the problem retrieving payment message is displayed
                #Run Keyword    Click on the firstContinueTask button on the ${taskOption} screen of the ${taskSection} section
            END
        END
    END
    ${originalWindowHandle}=    Get the browser window handles
    Switch Window    ${originalWindowHandle}
    Select the PegaGadget1Ifr iFrame
    Register Keyword To Run On Failure    Capture Page Screenshot
    Sleep    5s

Verify the problem retrieving payment message is displayed
    Wait Until Element Is Visible    ${lbl_policyHolderChat_payment_problemRetrievingPayment}    timeout=${sTimeout}
    ${actualText}    Get Text    ${lbl_policyHolderChat_payment_problemRetrievingPayment}
    ${expectedText}    Set Variable    ${policyHolderChat_payment_problemRetrievingPayment_txt}
    Should contain    ${actualText}    ${expectedText}

Select Payment iframe
    Sleep    5s
    Unselect Frame
    Select Frame    ${payment_Iframe}

Select the '${DropDownSelection}' value from the ${dropdownField} field on the ${taskOption} screen in the ${taskSection} section
    Select Payment iframe
    Wait for pega masking icon to complete  
    Wait Until Element Is Visible    ${dd_policyHolderChat_${taskSection}_${taskOption}_${dropdownField}}    timeout=${lTimeout}
    Click Element    ${dd_policyHolderChat_${taskSection}_${taskOption}_${dropdownField}}
    Sleep     2s
    ${dropDownOpt}=    Replace String    ${dd_policyHolderChat_${taskSection}_${taskOption}_${dropDownField}_option}    dropDownOption    ${DropDownSelection}
    Wait Until Element Is Visible    ${dropDownOpt}    timeout=${xxlTimeout}
    Click Element    ${dropDownOpt}
    Sleep     1s

Complete eCheck payment details
    [Arguments]    ${taskOption}    ${taskSection}
    Run Keyword    Select the 'Savings' value from the accountType field on the ${taskOption} screen in the ${taskSection} section
    Sleep    1s
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_accountHolderName}    ${policyHolderChat_payment_accountHolderName_txt}    clear=True
    Sleep    1s
    Press Keys    None    TAB
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_accountNumber}    ${policyHolderChat_payment_accountNumber_txt}    clear=True
    Sleep    1s
    Press Keys    None    TAB
    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_confirmAccountNumber}    timeout=${xxlTimeout}
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_confirmAccountNumber}    ${policyHolderChat_payment_accountNumber_txt}    clear=True
    Sleep    1s
    Press Keys    None    TAB
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_routingNumber}    ${policyHolderChat_payment_routingNumber_txt}    clear=True
    Sleep    1s
    Press Keys    None    TAB
    
Complete credit or debit card payment details
    [Arguments]    ${taskOption}    ${taskSection}
    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_nameOnCard}    timeout=${lTimeout}
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_nameOnCard}    ${policyHolderChat_payment_nameOnCard_txt}    clear=True
    Press Keys    None    TAB
    Sleep    3s
    ${status}     Run Keyword And Return Status    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_cardNumber}    timeout=${lTimeout}
    IF    '${status}' == 'True'
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_cardNumber}    ${policyHolderChat_payment_cardNumber_txt}    clear=True
    Sleep    1s
    Run Keyword    Select the '${policyHolderChat_payment_expirationMonth_option_txt}' value from the expirationMonth field on the ${taskOption} screen in the ${taskSection} section
    Run Keyword    Select the '${policyHolderChat_payment_expirationYear_option_txt}' value from the expirationYear field on the ${taskOption} screen in the ${taskSection} section
    Sleep    3s
    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_cvvCode}    timeout=${lTimeout}
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_cvvCode}    ${policyHolderChat_payment_cvvCode_txt}    clear=True
    Press Keys    None    TAB
    Sleep    3s
    Wait Until Element Is Visible    ${fld_policyHolderChat_${taskSection}_${taskOption}_postalCode}    timeout=${lTimeout}
    Input Text    ${fld_policyHolderChat_${taskSection}_${taskOption}_postalCode}    ${policyHolderChat_payment_postalCode_txt}    clear=True
    Sleep    2s
    ELSE 
        Do Nothing
        Register Keyword To Run On Failure    Capture Page Screenshot 
    END
Complete payment verification for setupAutoPayment and authorize
    [Arguments]    ${taskOption}    ${taskSection}
    Run Keyword    Verify that the creditCardProcessAuthorize dialog content is displayed on the ${taskOption} screen of the ${taskSection} section
    Run Keyword    Select the VROD checkbox on the ${taskOption} screen in the ${taskSection} section
    Run Keyword    Click on the submit button on the ${taskOption} screen of the ${taskSection} section
    Run Keyword    Verify that the processPaymentComplete dialog content is displayed on the ${taskOption} screen of the ${taskSection} section

Complete ${taskSection} verification for ${taskOption} and authorize 
    Run Keyword    Verify that the authorizeMakeAPayment dialog content is displayed on the ${taskOption} screen of the ${taskSection} section
    Run Keyword    Select the VROD checkbox on the ${taskOption} screen in the ${taskSection} section
    Run Keyword    Click on the submit button on the ${taskOption} screen of the ${taskSection} section
    Run Keyword    Verify that the eCheckPaymentComplete dialog content is displayed on the ${taskOption} screen of the ${taskSection} section
    
Click the ${taskBtn} button on the ${taskOption} screen of the ${taskSection} section
    Wait Until Element Is Visible    ${btn_policyHolderChat_${taskSection}_${taskOption}_${taskBtn}}    timeout=${xlTimeout}
    Click Element     ${btn_policyHolderChat_${taskSection}_${taskOption}_${taskBtn}}
    Sleep    2s

Verify the validation error message for eCheck Payment  
    Sleep    2s
    Select Payment iframe
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btn_policyHolderChat_payment_makeAPayment_submit}    timeout=${lTimeout}
    IF    '${status}'=='True'
    Input Text    ${fld_policyHolderChat_payment_makeAPayment_accountHolderName}    ${policyHolderChat_payment_accountDetails_txt}    clear=True
    Sleep    1s
    Press Keys    None    TAB
    Input Text    ${fld_policyHolderChat_payment_makeAPayment_accountNumber}    ${policyHolderChat_payment_accountDetails_txt}   clear=True
    Sleep    1s
    Press Keys    None    TAB
    Input Text    ${fld_policyHolderChat_payment_makeAPayment_routingNumber}    ${policyHolderChat_payment_accountDetails_txt}    clear=True
    Sleep    5s
    Press Keys    None    TAB
    Wait Until Element Is Visible    ${fld_policyHolderChat_payment_makeAPayment_AccountNameErrorMsg}    ${lTimeout}
    ${accountName}=    Get Text    ${fld_policyHolderChat_payment_makeAPayment_AccountNameErrorMsg}
    Should Be Equal    ${accountName}    ${lbl_policyHolderChat_payment_makeAPayment_accountNameErrorMsg_txt}
    Sleep    1s
    Wait Until Element Is Visible    ${fld_policyHolderChat_payment_makeAPayment_accountNoErrorMsg}    ${lTimeout}
    ${accountNo}=    Get Text    ${fld_policyHolderChat_payment_makeAPayment_accountNoErrorMsg}
    Should Be Equal    ${accountNo}    ${lbl_policyHolderChat_payment_makeAPayment_accountNoErrorMsg_txt}
    Sleep    1s
    Wait Until Element Is Visible    ${fld_policyHolderChat_payment_makeAPayment_routingNoErrorMsg}    ${lTimeout}
    ${routingNo}=    Get Text    ${fld_policyHolderChat_payment_makeAPayment_routingNoErrorMsg}
    Should Be Equal    ${routingNo}    ${lbl_policyHolderChat_payment_makeAPayment_routingNoErrorMsg_txt}
    Sleep    2s
    ELSE
        Do Nothing
        Register Keyword To Run On Failure    Capture Page Screenshot
    END

Verify the policiesInProcess dialog content is displayed on the makeAPayment screen
    ${actualText}=      Get Text    ${lbl_policyHolderChat_payment_makeAPayment_dialogContent}
    ${status}=    Run Keyword And Return Status    Should Contain    ${actualText}    ${lbl_policyHolderChat_payment_makeAPayment_dialogContent_policiesInProcess_txt}
    IF    '${status}'=='True'
            Do Nothing
            Register Keyword To Run On Failure    Capture Page Screenshot
    ELSE   
        Select the amountDue radio button in the payment section
        Click the proceedForPayment button on the makeAPayment screen of the payment section
        ${newWindowHandle}    Get Window Handles
        Switch Window    ${newWindowHandle}[1]
        Maximize Browser Window
        Wait Until Element Is Visible    ${radioBtn_policyHolderChat_payment_eCheck}    timeout=${mTimeout}
        Click Element     ${radioBtn_policyHolderChat_payment_eCheck}
        Sleep    3s
        Complete eCheck payment details    makeAPayment    payment
        Click Element    ${btn_policyHolderChat_payment_makeAPayment_submit}
        Sleep    3s
        ${originalWindowHandle}=    Get the browser window handles
        Switch Window    ${originalWindowHandle}
        Select the PegaGadget1Ifr iFrame
        Sleep    2s
        Select the VROD checkbox on the makeAPayment screen in the payment section
        Click on the submit button on the confirmPayment screen of the payment section
        Select the ECheck checkbox on the confirmPayment screen in the payment section
        Click on the submit button on the confirmPayment screen of the payment section
    END