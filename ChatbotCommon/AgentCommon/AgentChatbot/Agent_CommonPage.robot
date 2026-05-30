*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${colorWhite}        \#ffffff
${colorBlack}        \#000000
${colorOrange}       \#fc8a30
${colorBlue}         \#0070a9
${colorDarkBlue}     \#555555
${colorLightBlue}    \#bde9f9
${colorGrey}         \#f8f8f8
${colorLightGrey}    \#e9ebef
${orangeColor}       \#f89728


*** Keywords
Verify the chatbot colour property is correct
    [Arguments]    ${Element}    ${property}   ${PassCriteria}
    ${elem}    Get Webelement    ${Element}
    ${bg color}    Call Method    ${elem}    value_of_css_property    ${property}
    ${bg color}    Get Substring    ${bg color}     5    -1
    @{rgb}=    Split String    ${bg color}    ,${SPACE}
    ${red}    convert to integer    ${rgb}[0]
    ${green}    convert to integer    ${rgb}[1]
    ${blue}    convert to integer    ${rgb}[2]
    ${hex_color}=    transform_RGB_to_HEX    ${red}   ${green}   ${blue}
    Should contain    ${hex_color}    ${PassCriteria}

