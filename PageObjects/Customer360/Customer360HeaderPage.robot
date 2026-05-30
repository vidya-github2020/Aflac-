* Settings
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource

*Variables
# Policy holder header details.
${lbl_Policy_PolicySummary_headerField_DOB}                  12/20/1929 
${lbl_Policy_PolicySummary_headerField_CIF}                  1344569
${lbl_Policy_PolicySummary_headerField_SSN}                  *****4645
${lbl_Policy_PolicySummary_headerField_Name}                 Hubert Blaine Wolfeschlegelsteinhau
${lbl_Policy_PolicySummary_headerField_Phone}                (203) 748-2464
${lbl_Policy_PolicySummary_headerField_Email}                NAKULA@AFLAC.COM
${lbl_Policy_PolicySummary_headerField_Gender}               Female
${lbl_Policy_PolicySummary_headerField_Language}             English
${lbl_Policy_PolicySummary_headerField_UpdatedBy}            MDM
${lbl_Policy_PolicySummary_headerField_CIF9565435}           9565435
${lbl_Policy_PolicySummary_headerField_LastUpdate}           2025-02-01
${lbl_Policy_PolicySummary_headerField_CIF42801638}          42801638
${lbl_Policy_PolicySummary_headerField_PhoneNumber}          7893612345
${lbl_Policy_PolicySummary_headerField_Relationship}         Policyholder
${fld_Policy_PolicySummary_headerField_CustomerLabel_txt}    NISRIN BROW

${fld_Policy_PolicySummary_headerField_CIF}                xpath:(//span[@data-test-id='201705020725070683150823'])[3]
${fld_Policy_PolicySummary_headerField_DOB}                xpath:(//span[@data-test-id='201705020725070683150823'])[2]
${fld_Policy_PolicySummary_headerField_SSN}                xpath:(//span[@data-test-id='201705020725070683151764'])[3]
${fld_Policy_PolicySummary_headerField_Name}               xpath://span[@data-test-id='202002230238350155203448']
${fld_Policy_PolicySummary_headerField_Phone}              xpath:(//span[@data-test-id='201705020725070683150823'])[1]
${fld_Policy_PolicySummary_headerField_Email}              xpath:(//span[@data-test-id='201705020725070683151764'])[2]
${fld_Policy_PolicySummary_headerField_Gender}             xpath://span[@data-test-id='202210122204540146152']
${fld_Policy_PolicySummary_headerField_Language}           xpath://span[@data-test-id='20221012222827094979']
${fld_Policy_PolicySummary_headerField_UpdatedBy}          xpath:(//span[@data-test-id='201705020725070683150823'])[5]
${fld_Policy_PolicySummary_headerField_LastUpdate}         xpath:(//span[@data-test-id='201705020725070683150823'])[6]
${fld_Policy_PolicySummary_headerField_CIF9565435}         ${fld_Policy_PolicySummary_headerField_CIF}
${fld_Policy_PolicySummary_headerField_CIF42801638}        ${fld_Policy_PolicySummary_headerField_CIF}
${fld_Policy_PolicySummary_headerField_PhoneNumber}        xpath:(//span[@data-test-id='20200330101427093610276'])[1]
${fld_Policy_PolicySummary_headerField_Relationship}       xpath://span[@data-test-id='20200224090030080170232']
${fld_Policy_PolicySummary_headerField_CustomerLabel}      xpath://span[@data-test-id='20150102041453078010253']

# Certificate and Group number header details.
${lbl_Certificate_CertificateSummary_headerField_DOB}           03/13/1984
${lbl_Certificate_CertificateSummary_headerField_SSN}           *****0345
${lbl_Certificate_CertificateSummary_headerField_Gender}        Male
${lbl_Certificate_CertificateSummary_headerField_Language}      English
${lbl_Certificate_CertificateSummary_headerField_UpdatedBy}     ${EMPTY}
${lbl_Certificate_CertificateSummary_headerField_LastUpdate}    2025-04-02

${fld_Certificate_CertificateSummary_headerField_DOB}           xpath:(//span[@data-test-id='201705020725070683150823'])[1]
${fld_Certificate_CertificateSummary_headerField_SSN}           xpath:(//span[@data-test-id='201705020725070683151764'])[2]
${fld_Certificate_CertificateSummary_headerField_Gender}        xpath://span[@data-test-id='202210122204540146152']
${fld_Certificate_CertificateSummary_headerField_Language}      xpath://span[@data-test-id='20221012222827094979']
${fld_Certificate_CertificateSummary_headerField_UpdatedBy}     xpath:(//span[@data-test-id='201705020725070683150823'])[3]
${fld_Certificate_CertificateSummary_headerField_LastUpdate}    xpath:(//span[@data-test-id='201705020725070683150823'])[4]


*Keywords
Verify the ${searchType} details are displayed in the C360 summary header
    Wait for pega masking icon to complete
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${searchType}' == 'Policy'
            Verify the ${searchType} details are correct in the C360 summary header field    DOB
            Verify the ${searchType} details are correct in the C360 summary header field    Phone
            Verify the ${searchType} details are correct in the C360 summary header field    Email
            Verify the ${searchType} details are correct in the C360 summary header field    SSN
            Verify the ${searchType} details are correct in the C360 summary header field    Language
            Verify the ${searchType} details are correct in the C360 summary header field    Gender
            Verify the ${searchType} details are correct in the C360 summary header field    CIF
            Verify the ${searchType} details are correct in the C360 summary header field    UpdatedBy
            Verify the ${searchType} details are correct in the C360 summary header field    LastUpdate
            #Verify that the label text is displayed    fld_Policy_policySummary_headerField_CustomerLabel
        ELSE IF  '${searchType}' == 'Certificate'
            Verify the ${searchType} details are correct in the C360 summary header field    DOB
            Verify the ${searchType} details are correct in the C360 summary header field    SSN
            Verify the ${searchType} details are correct in the C360 summary header field    Gender
            Verify the ${searchType} details are correct in the C360 summary header field    Language
            Verify the ${searchType} details are correct in the C360 summary header field    UpdatedBy
            Verify the ${searchType} details are correct in the C360 summary header field    LastUpdate
        END

Verify the ${searchType} Contact Data details are displayed in the C360 summary header
    Wait for pega masking icon to complete
    Verify the ${searchType} details are correct in the C360 summary header field    Name
    Verify the ${searchType} details are correct in the C360 summary header field    Relationship
    Verify the ${searchType} details are correct in the C360 summary header field    PhoneNumber

Verify the ${searchType} details are correct in the C360 summary header field
    [Arguments]    ${fieldName}
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${fld_${searchType}_${searchType}Summary_headerField_${fieldName}}    timeout=${lTimeout}
        ${actualText}    Get Text    ${fld_${searchType}_${searchType}Summary_headerField_${fieldName}}
        ${expectedText}    Convert To String    ${lbl_${searchType}_${searchType}Summary_headerField_${fieldName}}
        Should Be Equal    ${actualText}    ${expectedText}