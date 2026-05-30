*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource

*** Variables ***
${lbl_PolicyHolder_Policy_OrderDuplicatePolicy_txt}                         Request for duplicate copy of below policies were accepted
${btn_policyHolderChat_Policy_OrderDuplicate_Submit}                        xpath://button[@data-test-id='20200309165727048430241' and contains(text(),'Submit')]
${lbl_policyHolderChat_Policy_OrderDuplicate_dialogContent}                 ${lbl_policyHolderChat_dialogContent_messageBar}
${btn_policyHolderChat_Policy_OrderDuplicatePolicy_Continue}                xpath://button[@data-test-id='20200309165727048430241' and contains(text(),'Continue')]
${chkBox_policyHolderChat_Policy_OrderDuplicatePolicy_CANCER}               xpath:(//input[@data-test-id='2020042012005808275973'])[2]
${lbl_Policyholder_Policy_OrderDuplicatePolicy_ConfirmationMsg}             xpath:(//div[@data-test-id='2020042309281102197235'])
${btn_policyHolderChat_Policy_OrderDuplicatePolicy_SubmitButton}            xpath://button[text()='Submit']
${chkBox_policyHolderChat_Policy_OrderDuplicatePolicy_ManualVROD}           ${chkBox_policyHolderChat_taskAddressForm_ManualVROD}      
${chkBox_policyHolderChat_Policy_OrderDuplicatePolicy_addressVerified}      xpath://input[@data-test-id='2020042612311103191871' and contains(@name,'EditAddress')]  
${lbl_policyHolderChat_Policy_OrderDuplicate_dialogContent_addressInfo_txt}     A copy of your policy will be mailed out to you in the next business day. ${SPACE}Depending upon where you live, it may take up to 7 days for you to receive it.

*** Keywords ***
 