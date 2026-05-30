*** Settings ***
Documentation    Example showing how to add accessibility testing to existing tests
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}TestSuites${/}PolicyHolderChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}TestSuites${/}PolicyHolderChat${/}CcsChatKeywords.robot
# Add the accessibility library
Library           ${EXECDIR}${/}Accessibility${/}Lib${/}ExternalKeywords.py

Suite Setup       Login as a PolicyHolderChat PolicyHolderPayment CCS user
Suite Teardown    Run Keywords    
...               Log out from the PolicyHolderChat ccs portal
...               AND    Close browser 
...               AND    Generate Combined Accessibility Report    combined_accessibility_report        

*** Test Cases ***
TC_01_Phone_Call_Interaction_Search_Accessibility_Test
    [Documentation]    Verify that the search page is accessible using axe-selenium-python.
    [Tags]    accessibility_search_page
    On the PolicyHolderChat open a new phone call interaction and search for Policyholder CertificateNumber CER0002011339
    Enter contact data information on the ccs search interaction page
    Select all checkboxes in PolicyHolder SearchResult table

    Check Accessibility And Continue    call_interaction_search_page
    
    Select the Continue button on the PolicyHolderChat ccs search interaction page
    Verify Header details section visible in C360 screen

    Check Accessibility And Continue    c360_screen_after_search


*** Keywords ***
Check Accessibility And Continue
    [Documentation]    Helper keyword to check accessibility and log results
    [Arguments]    ${page_name}
    
    ${filename}=    Set Variable    ${page_name}_accessibility.json
    Check And Generate Accessibility Report    ${filename}
    Log    Accessibility check completed for ${page_name}
