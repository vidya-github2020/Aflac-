*** Settings ***
Resource            ${EXECDIR}/MaxChannel/Settings.resource
Suite Setup         Global Setup
Suite Teardown      Global Teardown


*** Keywords ***
Global Setup
    log to console    Running Global Setup

Global Teardown
    [Documentation]    Global Teardown Keyword to run AFTER All Suites
    IF    ${ZEPHYR_SCALE} == ${True}
        Run Keyword And Warn On Failure    Upload Test Results    ${gFolderName}    ${gTestCycleName}    ${gZephyrFilePath}    subfolder_name=${gSubfolderName}
    END