*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${btn_dashboard}       xpath://span[contains(@class,'menu-item-title') and contains(text(),'Dashboard')]
${btn_myWork}          xpath://span[contains(@class,'menu-item-title') and contains(text(),'My Work')]
${btn_myReports}       xpath://span[contains(@class,'menu-item-title') and contains(text(),'My Reports')]
${btn_chatReports}     xpath://span[contains(@class,'menu-item-title') and contains(text(),'Chat Reports')]
${btn_managerTools}    xpath://span[contains(@class,'menu-item-title') and contains(text(),'Manager Tools')]
${btn_myCases}         xpath://span[contains(@class,'menu-item-title') and contains(text(),'My Cases')]
${btn_pulse}           xpath://span[contains(@class,'menu-item-title') and contains(text(),'Pulse')]
${btn_tags}            xpath://span[contains(@class,'menu-item-title') and contains(text(),'Tags')]


*** Keywords
The ${paveChatbot} CCS opens the ${pageName} page
    Select the PegaGadget0Ifr iFrame
    Wait Until Element Is Visible    ${btn_${pageName}}    timeout=${sTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_${pageName}

