*** Settings ***
Library           SeleniumLibrary
Library           ../Lib/ExternalKeywords.py
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource


*** Test Cases ***
Login Page Accessibility Test
    [Documentation]    Verify that the login page is accessible using axe-selenium-python.
    Open the CCS portal Pega_SignIn_URL
    Check Accessibility And Continue    login_page
    [Teardown]    Close Browser


*** Keywords ***
Check Accessibility And Continue
    [Documentation]    Helper keyword to check accessibility and log results
    [Arguments]    ${page_name}
    
    ${filename}=    Set Variable    ${page_name}_accessibility.json
    Check And Generate Accessibility Report    ${filename}
    Log    Accessibility check completed for ${page_name}