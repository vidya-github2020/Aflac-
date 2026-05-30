*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
## ----- Verify Me Form ----- ##
${lbl_verifyMe_firstName}               xpath://label[contains(@class,'field-caption dataLabelForWrite') and contains(@for,'FirstName')]
${fld_verifyMe_firstName}               xpath://input[contains(@id,'FirstName') and contains(@type,'text')]
${lbl_verifyMe_firstName_validation}    xpath://*[@id='$PpyWorkPage$pFirstNameError']/span[contains(@class,'iconError dynamic-icon-error')]

${lbl_verifyMe_lastName}               xpath://label[contains(@class,'field-caption dataLabelForWrite') and contains(@for,'LastName')]
${fld_verifyMe_lastName}               xpath://input[contains(@id,'LastName') and contains(@type,'text')]
${lbl_verifyMe_lastName_validation}    xpath://*[@id='$PpyWorkPage$pLastNameError']/span[contains(@class,'iconError dynamic-icon-error')]

${lbl_verifyMe_dob}               xpath://label[contains(@class,'field-caption dataLabelForWrite') and contains(@for,'DOB')]
${fld_verifyMe_dob}               xpath://input[contains(@id,'DOB') and contains(@type,'text')]
${lbl_verifyMe_dob_validation}    xpath://*[@id='$PpyWorkPage$pDOBError']/span[contains(@class,'iconError dynamic-icon-error')]

${lbl_verifyMe_zip}               xpath://label[contains(@class,'field-caption dataLabelForWrite') and contains(@for,'ZipCode')]
${fld_verifyMe_zip}               xpath://input[contains(@id,'ZipCode') and contains(@type,'text')]
${lbl_verifyMe_zip_validation}    xpath://*[@id='$PpyWorkPage$pZipCodeError']/span[contains(@class,'iconError dynamic-icon-error')]

${lbl_verifyMe_SSN}               xpath://label[contains(@class,'field-caption dataLabelForWrite') and contains(@for,'SSN')]
${fld_verifyMe_SSN}               xpath://input[contains(@id,'SSN') and contains(@type,'text')]
${lbl_verifyMe_SSN_validation}    xpath://*[@id='$PpyWorkPage$pSSNError']/span[contains(@class,'iconError dynamic-icon-error')]

${btn_verifyMe_openForm}      xpath://button[contains(@data-test-id, '201812041435470749372') and contains(text(),'Verify Me')]
${btn_verifyMe_CloseForm}     xpath://img[contains(@data-ctl,'Icon') and contains(@name,'AFLWorkFormWrapper_PreviewConsole')]
${btn_verifyMe_CancelForm}    xpath://div[contains(@class,'pzbtn-mid') and contains(text(),'Cancel')]
${btn_verifyMe_SubmitForm}    xpath://div[contains(@class,'pzbtn-mid') and contains(text(),'Submit')]

${lbl_verifyMe_reviewForm}             xpath:(//div[contains(@string_type,'label') and contains(text(),'Review')])[last()]
${btn_verifyMe_cancelReviewForm}       xpath://button[contains(@data-test-id, '201509220516510616842448') and contains(text(),'Cancel')]
${lbl_verifyMe_faxReviewFormFields}    xpath://div[contains(@class,'field-item dataValueRead')]//span

*** Keywords
Select the ${paveChatbot} verify me form button
    Wait for Chatbot System loading icon to complete
    Wait until element is visible    ${btn_verifyMe_openForm}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_verifyMe_openForm
    Wait until element is visible    ${fld_verifyMe_firstName}    timeout=${mTimeout}

Select the ${paveChatbot} verify me close form button
    Run Keyword    Click the ${paveChatbot} button    btn_verifyMe_CloseForm
    Wait for Chatbot System loading icon to complete

Select the ${paveChatbot} verify me cancel form button
    Run Keyword    Click the ${paveChatbot} button    btn_verifyMe_CancelForm
    Sleep    8s
    Wait for Chatbot System loading icon to complete
    Run Keyword    Verify that the ${paveChatbot} live chat message is displayed lbl_${paveChatbot}_verifyMe_CancelForm

Select the ${paveChatbot} verify me submit button
    Run Keyword    Click the ${paveChatbot} button    btn_verifyMe_SubmitForm
    Wait for Chatbot System loading icon to complete

Select the ${paveChatbot} verify me review form button
    Run Keyword    Click the ${paveChatbot} button    lbl_${paveChatbot}_verifyMe_reviewForm
    Wait for Chatbot System loading icon to complete
    Wait until element is visible    ${btn_verifyMe_cancelReviewForm}    timeout=${mTimeout}

Select the ${paveChatbot} verify me cancel review form button
    Run Keyword    Click the ${paveChatbot} button    btn_verifyMe_cancelReviewForm
    Wait for Chatbot System loading icon to complete


The ${paveChatbot} agent selects the close button on the verify me form
    Run Keyword    Select the ${paveChatbot} verify me close form button
    Wait until element is visible    ${btn_verifyMe_openForm}    timeout=${mTimeout}

The ${paveChatbot} agent selects the cancel button on the verify me form
    Run Keyword    Select the ${paveChatbot} verify me cancel form button

The ${paveChatbot} agent selects the submit button on the verify me form
    Run Keyword    Select the ${paveChatbot} verify me submit form button

