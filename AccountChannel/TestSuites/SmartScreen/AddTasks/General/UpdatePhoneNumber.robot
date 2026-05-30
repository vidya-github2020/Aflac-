*** Settings ***
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}PageObjects_Resources.robot

Suite Setup       Run Keywords    Login as a SmartScreenUser SSAccountOneUser CCS user
...               AND    Verify header text as Smart Screens 
...               AND    On the SmartScreen open a new indexing interaction
...               AND    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
...               AND    Enter the value as 'SOUTH TEXAS AMATEUR FOOT BALL' in the AccountName field on Search screen in the SearchInteraction section
...               AND    Click on the AccountSearch button on the SearchInteraction screen of the Search section
...               AND    Verify header text in search results data when search as account
...               AND    Verify the c360 screen details                                  
Test Setup        As a SmartScreen ccs add a new updatePhoneNumber task from the general section 
Test Teardown     Close current Intent on C360 screen    
Suite Teardown    Logout from the SmartScreen portal   

* Test Cases
TC_01_Verify SS update Phone Number functionality when Phone Number Update checkbox selected
    [Tags]    B-320740   
    Select the PhoneNumberUpdate checkbox on the updatePhoneNumber screen in the general section
    Input the value as '(789) 361-23' in the phoneNumber field on updatePhoneNumber screen in the general section
    Click on the submit button on the updatePhoneNumber screen of the general section 
    Verify that UpdatePhoneNumber confirmationmessage is displayed on the updatePhoneNumber screen of the general section
    Click on the close button on the updatePhoneNumber screen of the general section 

TC_02_Verify SS invalid Phone Number error message on updatePhoneNumber screen 
    [Tags]    B-320740   
    Select the PhoneNumberUpdate checkbox on the updatePhoneNumber screen in the general section
    Input the value as '789363' in the phoneNumber field on updatePhoneNumber screen in the general section
    Verify the validation error message in updatePhoneNumber screen
    Click on the exit button on the updatePhoneNumber screen of the general section

TC_03_Verify SS reset button functionality is working fine for update Phone Number
    [Tags]    B-320740         
    Select the PhoneNumberUpdate checkbox on the updatePhoneNumber screen in the general section
    Input the value as '78936123' in the phoneNumber field on updatePhoneNumber screen in the general section
    Click on the reset button on the updatePhoneNumber screen of the general section
    Click on the exit button on the updatePhoneNumber screen of the general section
    
TC_04_Verify SS exit button functionality is working fine for update Phone Number
    [Tags]    B-320740  
    Click on the exit button on the updatePhoneNumber screen of the general section
    
        

