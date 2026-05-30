###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource

* Variables
## ----- Estimate Claim Review Date Form ----- ##
${lbl_PolicyHolderChat_estClaimReviewDate_submissionMethod}               xpath://label[contains(@class,'field-caption dataLabelForWrite') and contains(@for,'SubmissionMethod')]
${fld_PolicyHolderChat_estClaimReviewDate_submissionMethod}               xpath://select[contains(@data-test-id,'2020022013152600675925') and contains(@name,'$PpyWorkPage$pClaimDetails$pSubmissionMethod')]
${lbl_PolicyHolderChat_estClaimReviewDate_submissionMethod_validation}    xpath://*[@id='$PpyWorkPage$pClaimDetails$pSubmissionMethodError']/span[contains(@class,'iconError dynamic-icon-error')]

${lbl_PolicyHolderChat_estClaimReviewDate_policyType}               xpath://label[contains(@class,'field-caption dataLabelForWrite') and contains(@for,'PolicyType')]
${fld_PolicyHolderChat_estClaimReviewDate_policyType}               xpath://select[contains(@data-test-id,'2020022013152600675925') and contains(@name,'$PpyWorkPage$pClaimDetails$pPolicyType')]
${lbl_PolicyHolderChat_estClaimReviewDate_policyType_validation}    xpath://*[@id='$PpyWorkPage$pClaimDetails$pPolicyTypeError']/span[contains(@class,'iconError dynamic-icon-error')]

${lbl_PolicyHolderChat_estClaimReviewDate_submissionDate}    xpath://label[contains(@class,'field-caption dataLabelForWrite') and contains(@for,'SubmissionDate')]
${fld_PolicyHolderChat_estClaimReviewDate_submissionDate}    xpath://input[contains(@id,'SubmissionDate') and contains(@validationtype,'date')]

${btn_PolicyHolderChat_estClaimReviewDate_openForm}      xpath://button[contains(@data-test-id, '201812041435470749372') and contains(text(),'Estimate Claim Review Date')]
${btn_PolicyHolderChat_estClaimReviewDate_CloseForm}     xpath://img[contains(@data-ctl,'Icon') and contains(@name,'AFLWorkFormWrapper_PreviewConsole')]
${btn_PolicyHolderChat_estClaimReviewDate_CancelForm}    xpath://div[contains(@class,'pzbtn-mid') and contains(text(),'Cancel')]
${btn_PolicyHolderChat_estClaimReviewDate_SubmitForm}    xpath://div[contains(@class,'pzbtn-mid') and contains(text(),'Submit')]

${lbl_PolicyHolderChat_estClaimReviewDate_reviewForm}             xpath:(//div[contains(@string_type,'label') and contains(text(),'Review')])[last()]
${btn_PolicyHolderChat_estClaimReviewDate_cancelReviewForm}       xpath://button[contains(@data-test-id, '201509220516510616842448') and contains(text(),'Cancel')]
${lbl_PolicyHolderChat_estClaimReviewDate_faxReviewFormFields}    xpath://div[contains(@class,'field-item dataValueRead')]//span

## ----- Chat Bot Sections ----- ##
${lbl_PolicyHolderChat_estClaimReviewDate_Auth}          ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_estClaimReviewDate_Continue}      ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_estClaimReviewDate_CancelForm}    ${lbl_getChatBotSections}

* Keywords
Select the PolicyHolderChat esitmate claim review date form button
    Sleep    1s
    Wait until element is visible    ${btn_PolicyHolderChat_estClaimReviewDate_openForm}    timeout=${mTimeout}
    Click the PolicyHolderChat button    btn_PolicyHolderChat_estClaimReviewDate_openForm
    Wait until element is visible    ${fld_PolicyHolderChat_estClaimReviewDate_submissionMethod}    timeout=${mTimeout}

Select the PolicyHolderChat esitmate claim review date close form button
    Click the PolicyHolderChat button    btn_PolicyHolderChat_estClaimReviewDate_CloseForm
    Sleep    1s

Select the PolicyHolderChat esitmate claim review date cancel form button
    Click the PolicyHolderChat button    btn_PolicyHolderChat_estClaimReviewDate_CancelForm
    Sleep    10s
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_estClaimReviewDate_CancelForm

Select the PolicyHolderChat esitmate claim review date submit form button
    Click the PolicyHolderChat button    btn_PolicyHolderChat_estClaimReviewDate_SubmitForm
    Sleep    1s

Select the PolicyHolderChat esitmate claim review date review form button
    Click the PolicyHolderChat button    lbl_PolicyHolderChat_estClaimReviewDate_reviewForm
    Wait until element is visible    ${btn_PolicyHolderChat_estClaimReviewDate_cancelReviewForm}    timeout=${mTimeout}

Select the PolicyHolderChat esitmate claim review date cancel review form button
    Click the PolicyHolderChat button    btn_PolicyHolderChat_estClaimReviewDate_cancelReviewForm
    Sleep    1s

The PolicyHolderChat agent selects the close button on the esitmate claim review date form
    Select the PolicyHolderChat esitmate claim review date close form button
    Wait until element is visible    ${btn_PolicyHolderChat_estClaimReviewDate_openForm}    timeout=${mTimeout}

The PolicyHolderChat agent selects the cancel button on the esitmate claim review date form
    Select the PolicyHolderChat esitmate claim review date cancel form button

The PolicyHolderChat agent selects the submit button on the esitmate claim review date form
    Select the PolicyHolderChat esitmate claim review date submit form button

