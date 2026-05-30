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
${link_aflacHome}                xpath://a[contains(text(),'www.aflac.com')]
${link_myAflac}                  xpath://a[contains(text(),'myAflac.com')]
${link_myAflacCustomerPortal}    xpath://a[contains(text(),'MyAflac customer portal')]
${link_myAflacLogin}             xpath://a[contains(text(),'My Aflac Login Page')]
${link_clickHere}                xpath:(//a[contains(text(),'here')])[last()]
${link_customerPortalLogin}      xpath://a[contains(text(),'Sign in or create a MyAflac account')]

${url_aflacHome}      https://www.aflac.com/
${url_myAflac}        https://phs.aflac.com/aflac.phs.app/account/login
${url_myAflacCustomerPortal}    https://my.aflac.com/portal/server.pt?open=514&objID=626382&parentname=Gateway&parentid=2&mode=2
${url_aflacPortal}    https://my.aflac.com/portal/server.pt

${url_customerPortalLogin}    https://mylogin.aflac.com/

${url_customerPortal_reinstatePolicy}      https://my.aflac.com/portal/server.pt?open=514&objID=626382&parentname=CommunityPage&parentid=34&mode=2&in_hi_userid=2&cached=true
${url_bankDraftPDF}                        https://www.aflac.com/us/en/docs/policyholders/BankDraftAuthorizationForm.pdf
${url_changeBeneficiary_englishFormPDF}    https://www.aflac.com/docs/policyholders/change-forms/request-for-beneficiary-change.pdf
${url_changeBeneficiary_spanishFormPDF}    https://www.aflac.com/es/docs/policyholders/change-forms/es-request-for-beneficiary-change.pdf
${url_genderIdentity_englishFormPDF}       https://www.aflac.com/docs/policyholders/change-forms/request-for-gender-identity-change-reassignment.pdf
${url_genderIdentity_spanishFormPDF}       https://www.aflac.com/es/docs/policyholders/change-forms/es-request-for-gender-identity-change-reassignment.pdf
${url_policyIdCardPDF}                     https://my.aflac.com/portal/server.pt?open=514&objID=626382&parentname=CommunityPage&parentid=34&mode=2&in_hi_userid=2&cached=true
${url_fileAClaim}                          https://www.aflac.com/file-a-claim/default.aspx


* Keywords

