*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${current_DateTime}
${current_StartTime}
${current_EndTime}

* Keywords
Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    ${current_date}    Get Current Date    result_format=%Y/%m/%d

    ${current_ST}=    Set Variable    ${current_date} ${ccsStartTime}
    ${current_ST}=    Convert Date    ${current_ST}    epoch
    Set Global Variable    ${current_StartTime}    ${current_ST}

    ${current_ET}=    Set Variable    ${current_date} ${ccsEndTime}
    ${current_ET}=    Convert Date    ${current_ET}    epoch
    Set Global Variable    ${current_EndTime}    ${current_ET}

    ${current_DT}    Get Current Date    UTC    -5hours    result_format=epoch
    Set Global Variable    ${current_DateTime}    ${current_DT}
    
