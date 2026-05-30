*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${lbl_noCurrentAssignments}        css:[class|='field-item dataLabelWrite heading_2_dataLabelWrite']
${lbl_noCurrentAssignments_txt}    There are currently no assignments available for you to work on. Please try again later.

${tab_myCases}              xpath://div[contains(@class,'header') and contains(@role,'tab') and contains(@title,'My Cases')]
${tab_myCases_txt}          My cases
#${tab_recentWork}           xpath://div[contains(@class,'header') and contains(@role,'tab') and contains(@title,'Recent Work')]
${tab_recentWork}           xpath://div[contains(@class,'header') and contains(@role,'tab') and contains(@aria-label,'Recent work')]
${tab_recentWork_txt}       Recent work
${MyWorkCaseID}             xpath://a[@data-test-id="20150129101322039121278" and contains(text(),'{}')]
${tab_followedCases}        xpath://div[contains(@class,'header') and contains(@role,'tab') and contains(@title,'Followed cases')]
${tab_followedCases_txt}    Followed cases
${btn_bannerExpansion}    xpath:(//button[contains(@data-test-id,'201705030200020076297158')])[last()]

${icon_refreshMyWork}    xpath://i[@data-test-id='2014112007473804463877']
${btn_getMostUrgent}     xpath://button[@data-test-id='2014112007473804484690']
${tbl_firstCase}         xpath://td[@tabindex='0']//a[@data-test-id='201502191011330259134922']

*** Keywords
The ${paveChatbot} CCS selects the refresh my work icon
    Run Keyword    Click the ${paveChatbot} button    icon_refreshMyWork

The ${paveChatbot} CCS selects the get most urgent button
    Run Keyword    Click the ${paveChatbot} button    btn_getMostUrgent

The ${paveChatbot} CCS opens the first case in my work table
    Run Keyword    Click the ${paveChatbot} button    tbl_firstCase

The ${paveChatbot} CCS selects the Recent work tab
    Run Keyword    Click the ${paveChatbot} button    tab_recentWork

Verify the My Work table is displayed
    Select the PegaGadget0Ifr iFrame
    Wait Until Element Is Visible    ${tab_myCases}    timeout=${sTimeout}

Verify Build Remark shown in Recent Work table and can be selected
    ${MyWorkCaseIDValue}    format string    ${MyWorkCaseID}    ${BuildRemarksNumber}
    Select the PegaGadget1Ifr iFrame
    Wait Until Element Is Visible    ${MyWorkCaseIDValue}    timeout=${lTimeout}
    Click Element    ${MyWorkCaseIDValue}
