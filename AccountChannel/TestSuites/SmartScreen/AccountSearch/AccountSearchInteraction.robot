*** Settings ***
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchInteractionPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}AccountSearchInteractionPage.robot
Suite Setup       Run Keywords    Login as a SmartScreenUser SSAccountOneUser CCS user
...               Verify header text as Smart Screens 
Test Setup        On the SmartScreen open a new indexing interaction
Test Teardown     Close current interaction
Suite Teardown    Logout from the SmartScreen portal

*** Test Cases ***
TC_01_Verify search as SS Account and verify valid AccountNumber verify the account details in search results screen
    [Tags]    Smoke    B-309264
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field    
    Enter the value as 'AAB75' in the AccountNumber field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify the account search results Data as    NYMAN JEWELERS

TC_02_Verify search as SS Account and verify valid AccountName verify the account details in search results screen    
    [Tags]    Smoke    B-309264  
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
    Enter the value as 'NYMAN JEWELERS' in the Account Name field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify the account search results Data as    NYMAN JEWELERS

TC_03_Verify search as SS Account and verify valid Tax Id verify the account details in search results screen    
    [Tags]    Smoke    B-309264   
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Enter the value as '364524903' in the Tax Id field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify header text in search results data when search as account

TC_04_Verify search as SS Account and verify valid Invoice Number verify the account details in search results screen    
    [Tags]    Smoke    B-309264   
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
    Enter the value as '725684' in the Invoice Number field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify header text in search results data when search as account

TC_05_Verify search as SS Account and verify invalid account number error message on search results screen
    [Tags]    B-309264    
    skip    # recent changes with Grp number added - check Chris  
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
    Enter the value as '123' in the Account Number field on Search screen in the SearchInteraction section
    Verify the AccountNumber validation message in account search interaction page 

TC_06_Verify search as SS Account and Verify the search results using single character in AccountName field
    [Tags]    B-309264    
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
    Enter the value as 'a' in the Account Name field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify header text in search results data when search as account

TC_07_Verify search as SS Account and verify invalid Tax ID error message on search results screen
    [Tags]    B-309264      
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Enter the value as '123456' in the Tax ID field on Search screen in the SearchInteraction section
    Verify the TaxID validation message in account search interaction page

TC_08_Verify search as SS Account and verify invalid Invoice Number error message on search results screen
    [Tags]    B-309264      
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
    Enter the value as '1234' in the Invoice Number field on Search screen in the SearchInteraction section
    Verify the InvoiceNumber validation message in account search interaction page  
       
TC_09_Verify SS Account combination search functionality for address1 and zipcode 
    [Tags]     Smoke    B-309264             
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Click on the Address button on the SearchInteraction screen of the Search section
    Enter the value as '50 BOSTON TPKE' in the Address1 field on search screen in the searchInteraction section
    Enter the value as '01545' in the Zipcode field on search screen in the searchInteraction section      
    Click on the AccountSearch button on the SearchInteraction screen of the Search section       
    Verify header text in search results data when search as account

TC_10_Verify SS Account combination search functionality for City and AccountName 
    [Tags]    Smoke    B-309264      
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Click on the Address button on the SearchInteraction screen of the Search section
    Enter the value as 'SOUTHFIELD' in the City field on search screen in the searchInteraction section
    Enter the value as 'RS MD PLLC' in the AccountName field on search screen in the searchInteraction section  
    Click on the AccountSearch button on the SearchInteraction screen of the Search section        
    Verify header text in search results data when search as account

TC_11_Verify SS Account combination search functionality for Zipcode and AccountName 
    [Tags]    B-309264            
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Click on the Address button on the SearchInteraction screen of the Search section
    Enter the value as '65775' in the Zipcode field on search screen in the searchInteraction section
    Enter the value as 'WOMENS HEALTH CARE' in the AccountName field on search screen in the searchInteraction section  
    Click on the AccountSearch button on the SearchInteraction screen of the Search section        
    Verify header text in search results data when search as account

TC_12_Verify SS Account combination search functionality for State and AccountName 
    [Tags]   B-309264     
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Click on the Address button on the SearchInteraction screen of the Search section
    Select a value as 'MI' from the State field on the search screen in the searchInteraction section
    Enter the value as 'RS MD PLLC' in the AccountName field on search screen in the searchInteraction section  
    Click on the AccountSearch button on the SearchInteraction screen of the Search section        
    Verify header text in search results data when search as account

TC_13_Verify SS Account Informational Message on search screen for address1 and zipcode combination search 
    [Tags]   B-309264
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Click on the Address button on the SearchInteraction screen of the Search section
    Enter the value as '2060 DELTA WAY' in the Address1 field on search screen in the searchInteraction section
    Verify the Address1 informational message in account search interaction page 

TC_14_Verify SS Account Informational Message on search screen for city and accountname combination search 
    [Tags]   B-309264
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Click on the Address button on the SearchInteraction screen of the Search section
    Enter the value as 'TALLAHASSEE' in the City field on search screen in the searchInteraction section
    Verify the City informational message in account search interaction page 

TC_15_Verify SS Account Informational Message on search screen for state and accountname combination search 
    [Tags]    B-309264
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Click on the Address button on the SearchInteraction screen of the Search section
    Select a value as 'FL' from the State field on the search screen in the searchInteraction section
    Verify the State informational message in account search interaction page 

TC_16_Verify SS Account Informational Message on search screen for zipcode and accountname combination search 
    [Tags]    B-309264 
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Click on the Address button on the SearchInteraction screen of the Search section
    Enter the value as '28077' in the ZipCode field on search screen in the searchInteraction section
    Verify the ZipCode informational message in account search interaction page 

TC_17_Verify SS Account Informational Message for accountname in account search interaction page
    [Tags]    B-309264 
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Enter the value as 'SOUTH' in the AccountName field on Search screen in the SearchInteraction section
    Select the AccountName checkbox on the Search screen in the SearchInteraction section 
    Verify the AccountName informational message in account search interaction page 

TC_18_Verify search as SS Account and verify valid AccountName verify the C360 view on search results screen 
    [Tags]    B-309264       
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field 
    Enter the value as 'RS MD PLLC' in the AccountName field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify header text in search results data when search as account
    Verify the c360 screen details

TC_19_Verify the tooltip text for SS AccountName field in account search interaction page
    [Tags]    B-309264      
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Verify the tooltip text for AccountName field in account search interaction page

TC_20_Verify the tooltip text for SS AccountnameCheckbox field in account search interaction page
    [Tags]    B-309264    
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Verify the tooltip text for AccountnameCheckbox field in account search interaction page

TC_21_Verify the tooltip text for SS AccountNumber field in account search interaction page
    [Tags]    B-309264    
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Verify the tooltip text for AccountNumber field in account search interaction page

TC_22_Verify the tooltip text for SS Account TaxId field in account search interaction page
    [Tags]    B-309264    
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Verify the tooltip text for TaxID field in account search interaction page

TC_23_Verify the tooltip text for SS Account InvoiceNumber field in account search interaction page
    [Tags]    B-309264    
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Verify the tooltip text for InvoiceNumber field in account search interaction page    

TC_24_Verify the tooltip text for SS Account Address1 field in account search interaction page
    [Tags]    B-309264        
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Click on the Address button on the SearchInteraction screen of the Search section
    Verify the tooltip text for Address1 field in account search interaction page 

TC_25_Verify the tooltip text for SS Address1Checkbox field in account search interaction page
    [Tags]    B-309264        
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Click on the Address button on the SearchInteraction screen of the Search section
    Verify the tooltip text for Address1Checkbox field in account search interaction page 

TC_26_Verify the tooltip text for City field in SS account search interaction page
    [Tags]    B-309264        
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Click on the Address button on the SearchInteraction screen of the Search section
    Verify the tooltip text for City field in account search interaction page     

TC_27_Verify the tooltip text for State field in SS account search interaction page
    [Tags]    B-309264        
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Click on the Address button on the SearchInteraction screen of the Search section
    Verify the tooltip text for State field in account search interaction page     

TC_28_Verify the tooltip text for Zipcode field in SS account search interaction page
    [Tags]    B-309264        
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Click on the Address button on the SearchInteraction screen of the Search section
    Verify the tooltip text for Zipcode field in account search interaction page         

TC_29_verify the reset button functionality in SS account search interaction page
    [Tags]    B-309264 
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Enter the value as 'EX360' in the AccountNumber field on Search screen in the SearchInteraction section
    Click on the Reset button on the SearchInteraction screen of the Search section 

TC_30_Verify Billingaddress header field on SS Account search results screen
    [Tags]   B-318617 
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Enter the value as 'EX360' in the AccountNumber field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify the account search results Data as    SOUTH TEXAS AMATEUR FOOT BALL
    Verify that the Billingaddress header displayed in account search results screen

TC_31_Verify Locationaddress header field on SS Account search results screen
    [Tags]   B-318617 
    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field
    Enter the value as 'HFK45' in the AccountNumber field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify the account search results Data as    MONROE COUNTY PROFESSIONAL MANAGEMENT
    Verify that the Locationaddress header displayed in account search results screen  