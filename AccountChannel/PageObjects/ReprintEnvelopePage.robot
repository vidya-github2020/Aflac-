*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchInteractionPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables ***
${btn_policyHolderChat_general_ReprintEnvelop_exit}             xpath://button[@data-test-id='2015021306370007121488']   
${btn_policyHolderChat_general_ReprintEnvelop_close}            xpath://button[@data-test-id='20150216042226087912495'] 
${btn_policyHolderChat_general_ReprintEnvelop_print}            xpath://button[@data-test-id='2015021306370007097332']
${btn_policyHolderChat_addTask_general_ReprintEnvelop}          xpath://a[@data-test-id='2014123005242607302524' and contains(text(),'Reprint Envelope')]
${lbl_policyHolderChat_general_ReprintEnvelop_sectionHeader}    xpath://h2[@class='heading_2_dataLabelRead']

# Buttons are in a shadow-dom in the print modal window
${btn_printModal_print}=    document.querySelector('print-preview-app').shadowRoot
    ...  .querySelector('print-preview-sidebar').shadowRoot
    ...  .querySelector('print-preview-button-strip').shadowRoot
    ...  .querySelector('div > cr-button.action-button')
${btn_printModal_cancel}=    document.querySelector('print-preview-app').shadowRoot
    ...  .querySelector('print-preview-sidebar').shadowRoot
    ...  .querySelector('print-preview-button-strip').shadowRoot
    ...  .querySelector('div > cr-button.cancel-button')

*** Keywords ***
Verify reprint envelop Address and close the reprint envelop window
    Wait Until Element Is Visible    ${btn_policyHolderChat_general_ReprintEnvelop_print}    timeout=${mTimeout}
    Click Element    ${btn_policyHolderChat_general_ReprintEnvelop_print}
    Sleep    3s
    Switch Window    new
    Maximize Browser Window
    Close Window    
    Switch Window    main
    Sleep    2s

Verify reprint envelop Address and ${buttonOption} the reprint envelop window 
    ${originalWindowHandle}=    Get the browser window handles
    # Click on the print button
    Wait Until Element Is Visible    ${btn_policyHolderChat_general_ReprintEnvelop_print}    timeout=${mTimeout}
    Click Element    ${btn_policyHolderChat_general_ReprintEnvelop_print}
    # Click on the print or cancel button in the print modal window
    Run Keyword    Click ${buttonOption} and return to the ${originalWindowHandle}

Click ${buttonOption} and return to the ${originalWindowHandle}
    Sleep    10s
    ${newWindowHandle}=    Get Window Handles
    FOR    ${winHandle}    IN    @{newWindowHandle}
        IF    '${winHandle}'=='${originalWindowHandle}'
            Do Nothing
        ELSE
            Switch Window   ${winHandle}
            ${present}=    Run Keyword And Return Status    Current Frame Should Contain    dom:${btn_printModal_${buttonOption}}   timeout=${sTimeout}
            IF    '${present}'=='True'
                Click Element    dom:${btn_printModal_${buttonOption}}
                Sleep    3s
                Close Window
                Switch Window   ${originalWindowHandle}
                Select the PegaGadget1Ifr iFrame
                Exit For Loop
            ELSE
                Do Nothing
            END
        END
    END

