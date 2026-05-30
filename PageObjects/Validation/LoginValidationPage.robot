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
${lbl_invalidPasswordMsg}               css:\#error.errorMessage
${lbl_invalidLogin}                     ${lbl_invalidPasswordMsg}
${lbl_invalidLogin_txt}                 The information you entered was not recognized.
${lbl_invalidForgotPassword}            ${lbl_invalidPasswordMsg}
${lbl_invalidForgotPassword_txt}        There has been a problem, contact the system administrator. A security event has been logged.
${lbl_invalidUserConfiguration}         ${lbl_invalidPasswordMsg}
${lbl_invalidUserConfiguration_txt}     This system has not yet been properly configured for resetting of passwords. Please contact your system administrator.
${lbl_resetPasswordNotAvailable}        ${lbl_invalidPasswordMsg}
${lbl_resetPasswordNotAvailable_txt}    Forgot password feature not available. Contact support for help obtaining your password.
${lbl_userDisabledLogin}                ${lbl_invalidPasswordMsg}
${lbl_userDisabledLogin_txt}            Your account has been disabled, contact your system administrator

${btn_Submit}                 id:btnSubmitSndOTP
${btn_Cancel}                 ${btn_ForgotPassword}
${btn_ForgotPassword}         id:spnLoginFrgtPwd
${btn_ForgotPassword_txt}     Trouble logging in?
${lbl_ForgotPassword}         id:lblFrgtPwd
${lbl_forgotPassword_txt}     Forgot password?
${lbl_currentPassword}        xpath://label[text()='Current Password']
${lbl_currentPassword_txt}    Current Password
${lbl_newPassword}            xpath://label[text()='New Password']
${lbl_newPassword_txt}        New Password
${lbl_confirmPassword}        xpath://label[text()='Confirm Password']
${lbl_confirmPassword_txt}    Confirm Password
${lbl_failedLoginAuthMsg}     css:div.message
${lbl_failedLoginAuth_txt}    Authentication Failed.

* Keywords

