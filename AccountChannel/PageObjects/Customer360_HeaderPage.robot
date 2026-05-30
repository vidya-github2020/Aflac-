###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

* Variables
${lbl_Account_accountSummary_headerField_TaxId}                *****3232
${lbl_Account_accountSummary_headerField_Phone}                (913) 894-0403
${lbl_Account_accountSummary_headerField_Status}               Cancelled
${lbl_Account_accountSummary_headerField_Address}              9736 LEGLER RD
${lbl_Account_accountSummary_headerField_Language}             ${EMPTY}
${lbl_Account_accountSummary_headerField_Category}             Payroll
${lbl_Account_accountSummary_headerField_Employees}            120         
${lbl_Account_accountSummary_headerField_AccountNumber}        AAA20
${lbl_Account_accountSummary_headerField_PolicyHolders}        0
${lbl_Account_accountSummary_headerField_CustomerLabel}        xpath://span[contains(@data-test-id,'20150102041453078010253')]
${lbl_Account_accountSummary_headerField_AssociateNumber}        GC280
${lbl_Account_accountSummary_headerField_CustomerLabel_txt}    BETTER LIFE TECHNOLOGY
${fld_Account_accountSummary_headerField_Status}       xpath://span[@data-test-id='202107161846140841404']
${fld_Account_accountSummary_headerField_Address}    xpath://span[@data-test-id='202211011242340543354']
${fld_Account_accountSummary_headerField_Category}     xpath://span[@data-test-id='201705020725070683151764']
${fld_Account_accountSummary_headerField_AssociateNumber}    xpath://span[@data-test-id='202107161846140841989']


* Keywords
Verify the Account details are displayed in the C360 summary header
    Wait for pega masking icon to complete
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
            Verify the Account details are correct in the C360 summary header field    TaxID               ${lbl_Account_accountSummary_headerField_TaxId}
            Verify the Account details are correct in the C360 summary header field    Phone               ${lbl_Account_accountSummary_headerField_Phone}
            Verify the Account details are correct in the C360 summary header field    Status              ${lbl_Account_accountSummary_headerField_Status}
            Verify the Account details are correct in the C360 summary header field    Address             ${lbl_Account_accountSummary_headerField_Address}
            Verify the Account details are correct in the C360 summary header field    Language            ${lbl_Account_accountSummary_headerField_Language}
            Verify the Account details are correct in the C360 summary header field    Category            ${lbl_Account_accountSummary_headerField_Category}
            Verify the Account details are correct in the C360 summary header field    Employees           ${lbl_Account_accountSummary_headerField_Employees}
            Verify the Account details are correct in the C360 summary header field    AccountNumber       ${lbl_Account_accountSummary_headerField_AccountNumber}
            Verify the Account details are correct in the C360 summary header field    PolicyHolders       ${lbl_Account_accountSummary_headerField_PolicyHolders}
            Verify the Account details are correct in the C360 summary header field    AssociateNumber       ${lbl_Account_accountSummary_headerField_AssociateNumber}            
            Verify that the label text is displayed    lbl_Account_accountSummary_headerField_CustomerLabel
        END

Verify the Account details are correct in the C360 summary header field
    [Arguments]    ${fieldName}    ${expectedValue}
    Wait for pega masking icon to complete
    IF    '${fieldName}'=='Phone' or '${fieldName}'=='AccountNumber' or '${fieldName}'=='Employees' or '${fieldName}'=='PolicyHolders' or '${fieldName}'=='Language' or '${fieldName}'=='TaxId'
        ${allElements}=    Return the Account c360 summary header fields 1
        ${listCount}=    Get Length    ${allElements}
        FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${expectedText}    Convert To String    ${expectedValue}
        Exit For Loop IF    '${actualText}'=='${expectedText}'
        IF    ${listcount-1}==${the_element}
            Fail    Element text is not found in the Account summary header.
        END
        END
    ELSE IF    '${fieldName}'=='Category' or '${fieldName}'=='Status' or '${fieldName}'=='AssociateNumber' or '${fieldName}'=='Address'
        ${actualText}    Get Text    ${fld_Account_accountSummary_headerField_${fieldName}}
        ${expectedText}    Convert To String    ${lbl_Account_accountSummary_headerField_${fieldName}}
        Should Be Equal    ${actualText}    ${expectedText}
    END

Return the Account c360 summary header fields ${fieldNumber}
    Select the PegaGadget1Ifr iFrame
    Wait Until Element Is Visible    ${lbl_AgentChat_agent_c360SummaryHeaderFields${fieldNumber}}    timeout=${mTimeout}
    ${allElements}    Get WebElements    ${lbl_AgentChat_agent_c360SummaryHeaderFields${fieldNumber}}
    RETURN    ${allElements}    