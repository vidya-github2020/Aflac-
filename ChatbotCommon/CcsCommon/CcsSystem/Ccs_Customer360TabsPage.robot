*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${img_url_expandRowIcon}      webwb/plus_13298094499.png!!.png
${img_url_collapseRowIcon}    webwb/RedMinus_12837181049.png!!.png

*** Keywords
The ${paveChatbot} CCS selects the C360 ${c360Tab} tab
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Sleep    3s
        Select the PegaGadget1Ifr iFrame
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tab_${paveChatbot}_${c360Tab}}     timeout=${mTimeout}
        Run Keyword    Click the ${paveChatbot} button    tab_${paveChatbot}_${c360Tab}
        Sleep    3s
        Wait for pega masking icon to complete
    ELSE
        Do Nothing
    END

Verify the ${c360Tab} tab header contains ${sectionheader} as section header
    IF    '${c360Tab}'=='visible'
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${sectionheader_${c360Tab}_${sectionheader}}    timeout=${mTimeout}
    Sleep    2s    
    ELSE IF    '${c360Tab}'=='notVisible'
    Wait for pega masking icon to complete
    Wait Until Element Is Not Visible    ${sectionheader_${c360Tab}_${sectionheader}}     timeout=${mTimeout}
    Sleep    2s
    END


The ${paveChatbot} CCS selects the C360 ${buttonName} button
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Sleep    3s
        Select the PegaGadget1Ifr iFrame
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${btn_${paveChatbot}_${buttonName}}     timeout=${mTimeout}
        Run Keyword    Click the ${paveChatbot} button    ${btn_${paveChatbot}_${buttonName}}
        Sleep    3s
        Wait for pega masking icon to complete
    ELSE
        Do Nothing
    END
    
Verify that the ${paveChatbot} ${c360Table} table contains the column header ${expectedHeader}
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_${paveChatbot}_${c360Table}_columnHeaders}    timeout=${mTimeout}
        ${allElements}    Get WebElements    ${tbl_${paveChatbot}_${c360Table}_columnHeaders}
        ${listCount}=    Get Length    ${allElements}
        Check if the table or expanded row header is displayed    ${c360Table}    ${expectedHeader}    ${allElements}    ${listCount}
    ELSE
        Do Nothing
    END

Verify that the ${paveChatbot} ${c360Page} ${c360Table} section contains the field ${fieldName}
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait Until Element Is Visible    ${fld_${paveChatbot}_${c360Page}_${c360Table}_fieldName}    timeout=${mTimeout}
        ${allElements}    Get WebElements    ${fld_${paveChatbot}_${c360Page}_${c360Table}_fieldName}
        ${listCount}=    Get Length    ${allElements}
        Check if the table or expanded row header is displayed    ${c360Table}    ${fieldName}    ${allElements}    ${listCount}
    ELSE
        Do Nothing
    END

Expand row number ${tableRowNumber} in the ${c360Table} table in the ${paveChatbot}
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        ${rowCollapseIcon}=    Replace String    ${tbl_${paveChatbot}_${c360Table}_rowCollapseIcon}    tableRowNumber    ${tableRowNumber}
        Wait Until Element Is Visible    ${rowCollapseIcon}    timeout=${xxlTimeout}
        Run Keyword And Ignore Error    Scroll button or label into view    ${rowCollapseIcon}
        Click Element    ${rowCollapseIcon}
        Sleep    5s
    ELSE
        Do Nothing
    END

Verify that the ${paveChatbot} ${c360Table} table contains the expanded row header ${expectedHeader}
    ${allElements}    Get WebElements    ${tbl_${paveChatbot}_${c360Table}_expandedColumnHeaders}
    ${listCount}=    Get Length    ${allElements}
    Check if the table or expanded row header is displayed    ${c360Table}    ${expectedHeader}    ${allElements}    ${listCount}

Verify that the ${paveChatbot} ${c360Table} table contains the expanded row YesNo header ${expectedHeader}
    ${allElements}    Get WebElements    ${tbl_${paveChatbot}_${c360Table}_expandedColumnHeaders_YesNo}
    ${listCount}=    Get Length    ${allElements}
    Check if the table or expanded row header is displayed    ${c360Table}    ${expectedHeader}    ${allElements}    ${listCount}

Check if the table or expanded row header is displayed
    [Arguments]    ${c360Table}    ${expectedHeader}    ${allElements}    ${listCount}
    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualTxt}    Get Text    ${allElements}[${the_element}]
        ${actualText}=    Remove String Using Regexp    ${actualTxt}    \'

        ${validationText}    Convert To String    expectedHeader
        ${expectedText}    Set Variable    ${${validationText}}
        Exit For Loop IF    '${actualText}'=='${expectedText}'

        IF    ${listcount-1}==${the_element}
            Fail    The ${expectedHeader} header was not found in the ${c360Table} Customer 360 table.
        END
    END

Verify that the table expand or collapse icon is displayed
    [Arguments]    ${Element}    ${property}   ${PassCriteria}
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${Element}     timeout=${mTimeout}
        ${getElements}    Get WebElements    ${Element}
        ${listCount}=    Get Length    ${getElements}
        FOR    ${theElement}    IN RANGE    ${listCount}
            ${ele}    Set Variable    ${getElements}[${theElement}]
            ${imageIcon}    Call Method    ${ele}    value_of_css_property    ${property}
            ${present}=    Run Keyword And Return Status    Should contain   ${imageIcon}     ${PassCriteria}
            Exit For Loop IF    '${present}'=='True'
            IF    ${listcount-1}==${theElement}
                Fail    Icon is not found in the table.
            END
        END
    ELSE
        Do Nothing
    END

Select Audit Checkbox ${tableRowNumber} in the ${c360Table} table in the ${paveChat}
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        ${rowCheckbox}=    Replace String    ${btn_${paveChat}_${c360Table}_rowAuditCheckbox}    tableRowNumber    ${tableRowNumber}
        Run Keyword And Ignore Error    Scroll button or label into view    ${rowCheckbox}
        Wait Until Element Is Visible    ${rowCheckbox}    timeout=${xxlTimeout}
        Click Element    ${rowCheckbox}
        Sleep    5s
    ELSE
        Do Nothing
    END

Select the Langauge Preference Checkbox
    [Arguments]    ${language}
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${chkBox_agentChat_general_UpdateLanguagePreferences_${language}}    timeout=${lTimeout}
    Click Element     ${chkBox_agentChat_general_UpdateLanguagePreferences_${language}}
    sleep    2s

Expand the '${c360TableTitle}' section on the ${pageTab} tab in the ${paveChat}
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        ${c360Table}    Replace String    ${c360TableTitle}    ${SPACE}    ${EMPTY}
        ${sectionHeader}=    Replace String    ${tbl_${paveChat}_${pageTab}_${c360Table}_sectionHeaderIcon}    tableSection    ${c360TableTitle}
        Wait Until Element Is Visible    ${sectionHeader}    timeout=${xxlTimeout}
        Click Element    ${sectionHeader}
        Sleep    1s
    ELSE
        Do Nothing
    END

Select the '${mgrWritingNumber}' Manager Writing Number then close the tab
    Sleep    1s
    ${mgrWritingNumberLink}=    Replace String    ${btn_AgentChat_MgmtHierarchy_MgrWritingNumberLink}    mgrWritingNo    ${mgrWritingNumber}
    Set Suite Variable    ${btn_MgrWritingNumberLink}    ${mgrWritingNumberLink}
    Click the AgentChat button    btn_MgrWritingNumberLink
    Sleep    1s
    Select the PegaGadget2Ifr iFrame
    Select the AgentChat CCS wrap up close button
    # Select the AgentChat CCS wrap up reason Other from the reason dropdown
    # Select the AgentChat CCS wrap up submit button
    Sleep    1s
    Select the PegaGadget1Ifr iFrame

Select the '${personsAgentWritingNumber}' Persons Agent Writing Number then close the tab
    Sleep    1s
    ${personsAgentWritingNumberLink}=    Replace String    ${btn_AgentChat_Summary_Persons_Writing#Lnk}    agntWritingNo    ${personsAgentWritingNumber}
    Set Suite Variable    ${btn_agntWritingNumberLink}    ${personsAgentWritingNumberLink}
    Click the AgentChat button    btn_agntWritingNumberLink
    Sleep    2s
    Wait Until Element Is Visible    ${btn_AgentChat_Summary_Persons_CloseModal}
    Click Element    ${btn_AgentChat_Summary_Persons_CloseModal}

### --- Verify that the UI displays the values returned from the API [Start] --- ###
Verify the UI ${rowFieldHeader} in row ${rowNumber} contains the ${apiValue} API value in the ${paveChat} ${c360Table} table
    Wait for pega masking icon to complete
    ${rowHeaderFieldValue}=    Replace String    ${tbl_${paveChat}_${c360Table}_rowHeaderFieldValues}    rowNumber    ${rowNumber}
    ${setRowHeaderFieldValue}=    Replace String    ${rowHeaderFieldValue}    rowName      ${rowFieldHeader}
    Verify that the UI displays the correct value from the API    ${setRowHeaderFieldValue}    ${c360Table}    ${apiValue}

Verify the expanded UI ${expandedRowFieldHeader} in row ${rowNumber} contains the ${apiValue} API value in the ${paveChat} ${c360Table} table
    Wait for pega masking icon to complete
    ${expandedRowHeaderFieldValue}=    Replace String    ${tbl_${paveChat}_${c360Table}_expandedRowHeaderFieldValues}    rowNumber    ${rowNumber}
    ${setExpandedRowFieldValue}=    Replace String    ${expandedRowHeaderFieldValue}    rowName    ${expandedRowFieldHeader}
    Verify that the UI displays the correct value from the API    ${setExpandedRowFieldValue}    ${c360Table}    ${apiValue}   

Verify the UI ${expandedRowFieldHeader} field contains the ${apiValue} API value in the ${paveChat} ${c360Table} table
    Wait for pega masking icon to complete
    ${setExpandedRowFieldValue}=    Replace String    ${tbl_${paveChat}_${c360Table}_expandedRowFieldValues}    rowName    ${expandedRowFieldHeader}
    Wait Until Element Is Visible    ${setExpandedRowFieldValue}    timeout=${mTimeout}
    Verify that the UI displays the correct value from the API    ${setExpandedRowFieldValue}    ${c360Table}    ${apiValue}

Verify the Yes or No UI ${expandedRowFieldHeader} field contains the ${apiValue} API value in the ${paveChat} ${c360Table} table
    Wait for pega masking icon to complete
    ${setExpandedRowFieldValue}=    Replace String    ${tbl_${paveChat}_${c360Table}_expandedRowYesNoFieldValues}    rowName    ${expandedRowFieldHeader}
    Verify that the UI displays the correct Yes or No value from the API    ${setExpandedRowFieldValue}    ${c360Table}    ${apiValue}

Verify that the UI displays the correct value from the API    
    [Arguments]    ${getUiFieldValue}    ${c360Table}    ${apiValue}
    # Get the UI value and remove all Blank/Null/None values and spaces
    ${uiFieldValue}    Get Text    ${getUiFieldValue}
    ${uiActualValue}    Replace String    ${uiFieldValue}    ${SPACE}    ${EMPTY}
    Verify that the UI value is equal to the API value    ${uiActualValue}    ${c360Table}    ${apiValue}

Verify that the UI displays the correct Yes or No value from the API
    [Arguments]    ${getUiFieldValue}    ${c360Table}    ${apiValue}
    # Get the UI alt value and remove all Blank/Null/None values and spaces
    ${altValue}    Get Element Attribute    ${getUiFieldValue}    alt
    ${uiActualValue}    Replace String    ${altValue}    ${SPACE}    ${EMPTY}
    Verify that the UI value is equal to the API value    ${uiActualValue}    ${c360Table}    ${apiValue}

Verify that the UI value is equal to the API value
    [Arguments]    ${uiActualValue}    ${c360Table}    ${apiValue}
    # Get the API value and remove all Blank/Null/None values and spaces
    ${apiFieldValue}    Convert To String    ${gApiValue_${c360Table}_${apiValue}}
    ${emptyApiValue}=    Run Keyword And Return Status    Should Contain    ${apiFieldValue}    None
    IF    '${emptyApiValue}'=='True'
        ${setApiActualValue}    Replace String    ${apiFieldValue}    None    ${SPACE}
        ${apiActualValue}    Replace String    ${setApiActualValue}    ${SPACE}    ${EMPTY}
    ELSE
        ${apiActualValue}    Replace String    ${apiFieldValue}    ${SPACE}    ${EMPTY}
    END
    
    Log to Console    uiActualValue: ${uiActualValue}
    Log to Console    apiActualValue: ${apiActualValue}

    ${status}=    Run Keyword And Return Status    Should Be Equal    ${uiActualValue}    ${apiActualValue}
    IF    '${status}'=='False'
        Fail    The value on the UI does not match the value returned from the API.
    END

### --- Verify that the UI displays the values returned from the API [end] --- ###

