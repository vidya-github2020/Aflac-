*** Settings ***
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}TestSuites${/}PolicyHolderChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}TestSuites${/}PolicyHolderChat${/}CcsChatKeywords.robot
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}AccountSearchInteractionPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}UpdateLocationAddressPage.robot
Suite Setup       Run Keywords    Login as a SmartScreenUser SSAccountUser CCS user
...               AND    Verify header text as Smart Screens 
...               AND    On the SmartScreen open a new indexing interaction
...               AND    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
...               AND    Enter the value as 'NYMAN JEWELERS' in the AccountName field on Search screen in the SearchInteraction section
...               AND    Click on the AccountSearch button on the SearchInteraction screen of the Search section
...               AND    Verify header text in search results data when search as account
...               AND    Verify the c360 screen details                                  
Test Setup       As a SmartScreen ccs add a new UpdateBilling/Location Address task from the general section 
Test Teardown    Close current Intent on C360 screen 
Suite Teardown    Logout from the SmartScreen portal   

* Test Cases
TC_01_Verify update Billing/Location address functionality when Address checkbox selected
    [Tags]    B-314510
    Select the BillingAddressUpdate checkbox on the UpdateBilling/LocationAddress screen in the general section
    Select a value as 'USPS cards' from the reason field on the UpdateBilling/LocationAddress screen in the general section
    Update Account Address Fields In UpdateBilling/LocationAddress Screen    6600 KITTEN LAKE DR    APT 317    MIDLAND    GA    31820-3769
    Click on the submit button on the UpdateBilling/LocationAddress screen of the general section 
    Click on the close button on the UpdateBilling/LocationAddress screen of the general section
   
TC_02_Verify update Location address functionality with out updating Billing/Location address
    [Tags]   B-314510   
    Select the BillingAddressUpdate checkbox on the UpdateBilling/LocationAddress screen in the general section
    Select a value as 'USPS cards' from the reason field on the UpdateBilling/LocationAddress screen in the general section
    Click on the submit button on the UpdateBilling/LocationAddress screen of the general section 
    Click on the close button on the UpdateBilling/LocationAddress screen of the general section

TC_03_Verify exit button functionality is working fine for update Billing/Location address
    [Tags]   B-314510  
    Click on the exit button on the UpdateBilling/LocationAddress screen of the general section
    
TC_04_Verify reset button functionality is working fine for update Billing/Location address
    [Tags]   B-314510        
    Select the BillingAddressUpdate checkbox on the UpdateBilling/LocationAddress screen in the general section
    Select a value as 'USPS cards' from the reason field on the UpdateBilling/LocationAddress screen in the general section
    Update Account Address Fields In UpdateBilling/LocationAddress Screen    2060 DELTA WAY    APT1314    TALLAHASSEE   FL    28077
    Click on the reset button on the UpdateBilling/LocationAddress screen of the general section
    
TC_05_Verify PrincipleContact Name available for update Billing/Location address page 
    [Tags]   B-334255   
    Verify the field on UpdateLocationAddressPage    Principle Contact     

TC_06_Verify PayrollContact Name available for update Billing/Location address page 
    [Tags]   B-334255      
    Verify the field on UpdateLocationAddressPage    Payroll Contact 

TC_07_Verify Location Zipcode updated correctly when Address checkbox selected
    [Tags]    B-343619  
    Select the BillingAddressUpdate checkbox on the UpdateBilling/LocationAddress screen in the general section
    Select a value as 'USPS cards' from the reason field on the UpdateBilling/LocationAddress screen in the general section
    Update Account Address Zipcode Field In LocationAddress Screen     31820-3769
    Click on the submit button on the UpdateBilling/LocationAddress screen of the general section 
    Click on the close button on the UpdateBilling/LocationAddress screen of the general section

