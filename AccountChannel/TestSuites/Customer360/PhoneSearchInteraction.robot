*** Settings ***
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchInteractionPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}AccountSearchInteractionPage.robot
Suite Setup       Run Keywords    Login as a PolicyHolderChat PolicyHolderAccount CCS user
...               AND    Select the PolicyHolderChat New button
...               AND    Select the PolicyHolderChat Phone call button
...               AND    On the PolicyHolderChat ccs search interaction page select the Account option from the SearchAs field
...               AND    Enter contact data information on the ccs search interaction page
Test Teardown     Click on the Reset button on the SearchInteraction screen of the Search section
Suite Teardown    Run Keywords    Close current interaction
...               AND    Enter the Reason and Submit wrapup button
...               AND    Log out from the PolicyHolderChat ccs portal
...               AND    Close browser

*** Test Cases ***
TC_01_Verify search as Account and verify valid AccountNumber verify the account details in search results screen
    [Tags]    Smoke    E-87164    B-322315
    Enter the value as 'AAB75' in the AccountNumber field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify the account search results Data as    NYMAN JEWELERS

TC_02_Verify search as Account and verify valid AccountName verify the account details in search results screen    
    [Tags]    Smoke    E-87164    B-322315
    Enter the value as 'NYMAN JEWELERS' in the Account Name field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify the account search results Data as    NYMAN JEWELERS

TC_03_Verify search as Account and verify valid Tax Id verify the account details in search results screen    
    [Tags]    Smoke    E-87164    B-322315
    Enter the value as '464077906' in the Tax Id field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify the account search results Data as     GYM SOURCE USA LLC

TC_04_Verify search as Account and verify valid Invoice Number verify the account details in search results screen    
    [Tags]    Smoke    E-87164    B-322315
    skip
    Enter the value as '766295' in the Invoice Number field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify the account search results Data as    	RS MD PLLC

TC_05_Verify search as Account and verify invalid account number error message on search results screen
    [Tags]    E-87164    B-322315
    skip    # recent changes with Grp number added - check Chris
    Enter the value as '123' in the Account Number field on Search screen in the SearchInteraction section
    Verify the AccountNumber validation message in account search interaction page 

TC_06_Verify search as Account and verify invalid Account Name error message on search results screen
    [Tags]    Ignore    E-87164    B-322315   skip  # error message removed
    skip
    Enter the value as 'an' in the Account Name field on Search screen in the SearchInteraction section
    Verify the AccountName validation message in account search interaction page

TC_07_Verify search as Account and verify invalid Tax ID error message on search results screen
    [Tags]    E-87164    B-322315   
    Enter the value as '***456' in the Tax ID field on Search screen in the SearchInteraction section
    Verify the TaxID validation message in account search interaction page

TC_08_Verify search as Account and verify invalid Invoice Number error message on search results screen
    [Tags]    E-87164    B-322315
    Enter the value as '1234' in the Invoice Number field on Search screen in the SearchInteraction section
    Verify the InvoiceNumber validation message in account search interaction page  
       
TC_09_Verify Account combination search functionality for address1 and zipcode 
    [Tags]    E-87164    B-322315
    skip
    Click on the Address button on the SearchInteraction screen of the Search section
    Enter the value as '8001 INTERNATIONAL DR' in the Address1 field on search screen in the searchInteraction section
    Enter the value as '32819' in the Zipcode field on search screen in the searchInteraction section      
    Click on the AccountSearch button on the SearchInteraction screen of the Search section       
    Verify the account search results Data as    NORTH READING

TC_10_Verify Account combination search functionality for City and AccountName 
    [Tags]    E-87164    B-322315
    skip
    Enter the value as 'SOUTHFIELD' in the City field on search screen in the searchInteraction section
    Enter the value as 'RS MD PLLC' in the AccountName field on search screen in the searchInteraction section  
    Click on the AccountSearch button on the SearchInteraction screen of the Search section        
    Verify the account search results Data as    RS MD PLLC

TC_11_Verify Account combination search functionality for Zipcode and AccountName 
    [Tags]    E-87164    B-322315
    skip
    Enter the value as '32819' in the Zipcode field on search screen in the searchInteraction section
    Enter the value as 'NORTH READING' in the AccountName field on search screen in the searchInteraction section  
    Click on the AccountSearch button on the SearchInteraction screen of the Search section        
    Verify the account search results Data as    NORTH READING

TC_12_Verify Account combination search functionality for State and AccountName 
    [Tags]    E-87164    B-322315
    skip
    Select a value as 'MI' from the State field on the search screen in the searchInteraction section
    Enter the value as 'RS MD PLLC' in the AccountName field on search screen in the searchInteraction section  
    Click on the AccountSearch button on the SearchInteraction screen of the Search section        
    Verify the account search results Data as    RS MD PLLC

TC_13_Verify Account Informational Message on search screen for address1 and zipcode combination search 
    [Tags]    E-87164    B-322315
    Click on the Address button on the SearchInteraction screen of the Search section
    Enter the value as '2060 DELTA WAY' in the Address1 field on search screen in the searchInteraction section
    Verify the Address1 informational message in account search interaction page 

TC_14_Verify Account Informational Message on search screen for city and accountname combination search 
    [Tags]    E-87164    B-322315
    Enter the value as 'TALLAHASSEE' in the City field on search screen in the searchInteraction section
    Verify the City informational message in account search interaction page 

TC_15_Verify Account Informational Message on search screen for state and accountname combination search 
    [Tags]    E-87164    B-322315
    Select a value as 'FL' from the State field on the search screen in the searchInteraction section
    Verify the State informational message in account search interaction page 

TC_16_Verify Account Informational Message on search screen for zipcode and accountname combination search 
    [Tags]    E-87164    B-322315
    Enter the value as '28077' in the ZipCode field on search screen in the searchInteraction section
    Verify the ZipCode informational message in account search interaction page 

TC_17_Verify Account Informational Message for accountname in account search interaction page
    [Tags]    E-87164    B-322315
    Enter the value as 'SOUTH' in the AccountName field on Search screen in the SearchInteraction section
    Select the AccountName checkbox on the Search screen in the SearchInteraction section 
    Verify the AccountName informational message in account search interaction page 

TC_18_Verify the tooltip text for AccountName field in account search interaction page
    [Tags]    E-87164    B-322315
    Verify the tooltip text for AccountName field in account search interaction page

TC_19_Verify the tooltip text for AccountnameCheckbox field in account search interaction page
    [Tags]    E-87164    B-322315
    Verify the tooltip text for AccountnameCheckbox field in account search interaction page

TC_20_Verify the tooltip text for AccountNumber field in account search interaction page
    [Tags]    E-87164    B-322315
    Verify the tooltip text for AccountNumber field in account search interaction page

TC_21_Verify the tooltip text for Account TaxId field in account search interaction page
    [Tags]    E-87164    B-322315
    Verify the tooltip text for TaxID field in account search interaction page

TC_22_Verify the tooltip text for Account InvoiceNumber field in account search interaction page
    [Tags]    E-87164    B-322315
    Verify the tooltip text for InvoiceNumber field in account search interaction page    

TC_23_Verify the tooltip text for Account Address1 field in account search interaction page
    [Tags]    E-87164    B-322315
    Verify the tooltip text for Address1 field in account search interaction page 

TC_24_Verify the tooltip text for Account Address1Checkbox field in account search interaction page
    [Tags]    E-87164    B-322315
    Verify the tooltip text for Address1Checkbox field in account search interaction page 

TC_25_Verify the tooltip text for Account City field in account search interaction page
    [Tags]    E-87164    B-322315
    Verify the tooltip text for City field in account search interaction page     

TC_26_Verify the tooltip text for Account State field in account search interaction page
    [Tags]    E-87164    B-322315
    Verify the tooltip text for State field in account search interaction page     

TC_27_Verify the tooltip text for Account Zipcode field in account search interaction page
    [Tags]    E-87164    B-322315
    Verify the tooltip text for Zipcode field in account search interaction page         

TC_28_Verify the Reset button functionality in Account search interaction page
    [Tags]    E-87164    B-322315
    Enter the value as 'EX360' in the AccountNumber field on Search screen in the SearchInteraction section

TC_29_Verify Billingaddress header field on Account search results screen
    [Tags]    E-87164    B-322315     
    Enter the value as 'EX360' in the AccountNumber field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify the account search results Data as    SOUTH TEXAS AMATEUR FOOT BALL
    Verify that the Billingaddress header displayed in account search results screen

TC_30_Verify Locationaddress header field on Account search results screen
    [Tags]    E-87164    B-322315 
    Enter the value as 'HFK45' in the AccountNumber field on Search screen in the SearchInteraction section
    Click on the AccountSearch button on the SearchInteraction screen of the Search section
    Verify the account search results Data as    MONROE COUNTY PROFESSIONAL MANAGEMENT
    Verify that the Locationaddress header displayed in account search results screen
        