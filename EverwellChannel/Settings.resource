###########################################################################
# This file will be used to import all necessary libraries or resource that
# could be needed anywhere in this project. Any test suite, keyword file,
# page object, test data file, environment file, etc., can simply reference
# this dependencies file by using the following settings.
#
# * Settings
# Resource    ${EXECDIR}${/}Settings.resource

# The only exception this rule is any keywords.robot files. These should
# only be referenced in settings of test suites where they are relevant.
###########################################################################

* Settings
Library    AflacCommon
#Library    Browser
Library    BuiltIn
Library    DateTime
#Library    DebugLibrary
Library    ImapLibrary2
Library    SeleniumLibrary
Library    String
Library    AflacCommonZephyrScale

Resource    ${EXECDIR}${/}EverwellChannel${/}Environments${/}${gEnvironment}.resource
Resource    ${EXECDIR}${/}EverwellChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellKeywords.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}CcsSystem${/}Ccs_PhoneInteractionPage.robot
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource
Resource    %{ROBOT_COMMON}/RobotCommon/CommonKeywords.resource

* Variables
${gEnvironment}   IntG
${gBrowser}       Chrome
#${gBrowserHeadless}    headlesschrome
${gPaveChatbot}    EverwellChat

## Timeouts ##
${xsTimeout}      1s
${sTimeout}       5s
${mTimeout}       10s
${lTimeout}       30s
${xlTimeout}      60s
${xxlTimeout}     120s
${xxxlTimeout}    240s

# Zephyr Scale
${ZEPHYRSCALE}           ${FALSE}                       #Options: ${TRUE}/${FALSE} - FALSE By Default, only update to TRUE locally for Zephyr upload then reset to FALSE
${gJiraProject}          C360                           #DO NOT CHANGE
${gFolderName}           Everwell_UI_DEMO               #Update to Test Cycle Folder Name
${gSubfolderName}        ${None}                        # If you do not need a subfolder, leave this as ${None}
${gTestCycleName}        Everwell_UI_MVP                #Update - Recommend using Story/Defect Number and text e.g. C360-123 Test Story
${gZephyrFilePath}       ${EXECDIR}/partial_junit.xml   #DO NOT CHANGE