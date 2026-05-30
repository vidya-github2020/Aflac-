*** Settings ***
Documentation     Clean accessibility test that works with the refactored library
Library           SeleniumLibrary
Library           ../../Lib/ExternalKeywords.py


*** Variables ***
${TEST_URL}       https://www.google.com    # Simple test URL that doesn't require special access


*** Test Cases ***
Simple Accessibility Test
    [Documentation]    Test accessibility on a simple public website
    Open Browser    ${TEST_URL}    Chrome
    Maximize Browser Window
    Sleep    2s    # Wait for page to load completely
    
    # Run accessibility check
    Check Accessibility And Continue    google_homepage
    
    [Teardown]    Close Browser


*** Keywords ***
Check Accessibility And Continue
    [Documentation]    Helper keyword to check accessibility and log results
    [Arguments]    ${page_name}
    
    ${filename}=    Set Variable    ${page_name}_accessibility.json
    Check And Generate Accessibility Report    ${filename}
    Log    Accessibility check completed for ${page_name}
