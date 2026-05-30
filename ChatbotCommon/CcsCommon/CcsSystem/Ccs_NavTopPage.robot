*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${lbl_pegaMaskingIcon}                       xpath://div[contains(@class,'pega_ui_masking')]
${btn_toggleAPI}                             xpath://label[@class='chkbxCaptionRight']
${btn_ccsOptions}                            xpath://button[contains(@data-test-id,'px-opr-image-ctrl')]
${btn_ccsOptions_bulkActions}                xpath://span[text()='Bulk Actions']
${btn_ccsOptions_myRules}                    xpath://span[text()='My rules']
${btn_ccsOptions_profile}                    xpath://span[text()='Profile']
${btn_ccsOptions_notificationPreferences}    xpath://span[text()='Notification preferences']
${btn_ccsOptions_aboutYourApplication}       xpath://span[text()='About your application']
${btn_ccsOptions_logOff}                     xpath://span[contains(@class,'menu-item-title') and contains(text(),'Logout')]

${btn_processQueueLoading}                        xpath://div[contains(@string_type,'label')]//div[contains(text(),'Loading')]
${btn_processAction}                              xpath://div[contains(@class,'sectionDivStyle') and contains(@data-node-id,'PegaChatSection')]
${btn_processAction_ManageQueue}                  xpath://span[contains(@class,'menu-item-title') and contains(text(),'Manage queues')]
${btn_processAction_ManageQueue_ccsClaims}        xpath://input[contains(@class,'checkbox') and (@title='ClaimsQueue')]
${btn_processAction_ManageQueue_ccsGeneral}       xpath://input[contains(@class,'checkbox') and contains(@title,'AssociateGeneralQueue')]
${btn_processAction_ManageQueue_ccsAgent}         xpath://input[contains(@class,'checkbox') and contains(@title,'AgentQueue')]
${btn_processAction_ManageQueue_ccsEverwell}      ${btn_processAction_ManageQueue_ccsAgent}
${btn_processAction_ManageQueue_ccsPHQueue}       xpath://input[contains(@class,'checkbox') and contains(@title,'PHQueue')]
${btn_processAction_ManageQueue_ccsAflacGroup}    xpath://input[contains(@class,'checkbox') and contains(@title,'AflacGroup')]
${btn_processAction_ManageQueue_ccsPolicyServicesQueue}    xpath://input[contains(@class,'checkbox') and contains(@title,'PolicyServicesQueue')]
${btn_processAction_Save}                         xpath://button[contains(@class,'pzhc pzbutton') and contains(text(),'Save')]

${btn_makeMeAvailable}        xpath://span[contains(@class,'menu-item-title') and contains(text(),'Make me available')]
${btn_makeMeAvailable_txt}    Make me available

${lbl_noJoinedQueues}        xpath://div[contains(@class,'content-item') and contains(@string_type,'label') and contains(text(),'You have not joined any queues')]
${lbl_noJoinedQueues_txt}    You have not joined any queues

${icon_pegaHome}                  css:[name|=pyPortalHeader_pyDisplayHarness_1]
${btn_create}                     xpath://a[text()='Create']
${btn_nextAssignment}             xpath://a[text()='Next Assignment']
${btn_notifications}              css:[name|=pyDesktopNotificationGadget_pyDisplayHarness_3][title|=Notifications]
${icon_notificationsSettings}     xpath://i[contains(@name,'pyNotificationHeader_TempNotificationPage')]
${txtBox_search}                  css:[class|=SearchResultsPromptText][data-changed|=false]
${btn_New}                        xpath://a[@data-test-id="2014100609491604293426"]
${btn_new_phoneCall}              xpath://span[contains(@class,'menu-item-title') and contains(text(),'Phone call')]
${btn_new_researchInteraction}    xpath://li[contains(@class,'menu-item menu-item-enabled') and contains(@data-test-id, "202011111505420681184")]

*** Keywords
Wait for pega masking icon to complete
    Sleep    3s
    Wait Until Element Is Not Visible    ${lbl_pegaMaskingIcon}    timeout=${xxxlTimeout}

Select the ${paveChatbot} ccs option button
    Run Keyword    Click the ${paveChatbot} button    btn_ccsOptions

Select the ${paveChatbot} work queue button
    Run Keyword    Click the ${paveChatbot} button    btn_processAction

Select the ${paveChatbot} manage queues button
    Run Keyword    Click the ${paveChatbot} button    btn_processAction_ManageQueue

Select the ${queueName} work queue option for the ${paveChatbot} chatbot
    Run Keyword    Click the ${paveChatbot} button    btn_processAction_ManageQueue_ccs${queueName}

Select the ${paveChatbot} save queue button
    Run Keyword    Click the ${paveChatbot} button    btn_processAction_Save

Select the ${paveChatbot} make me available button
    Run Keyword    Click the ${paveChatbot} button    btn_makeMeAvailable

Select the ${paveChatbot} New button
    Switch to the CcsPortal browser
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        SeleniumLibrary.Unselect Frame
        Run Keyword    Click the ${paveChatbot} button    btn_New
    ELSE
        Do Nothing
    END

Toggle the ${paveChatbot} API button
    Run Keyword    Click the ${paveChatbot} button    btn_toggleAPI

Select the ${paveChatbot} phone call button
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Run Keyword    Click the ${paveChatbot} button    btn_new_phoneCall
        &{browserAlias}=    Get Browser Aliases
        FOR    ${alias}    IN    @{browserAlias}
            Run Keyword IF    'CcsPortal' in '''${alias}'''    Run Keyword    If displayed close the Unauthorised Security Request modal popup after selecting 'btn_new_phoneCall'
        END
        Sleep    3s
        Wait for pega masking icon to complete
    ELSE
        Do Nothing
    END

Select the ${paveChatbot} research interaction button
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Run Keyword    Click the ${paveChatbot} button    btn_new_researchInteraction
        &{browserAlias}=    Get Browser Aliases
        FOR    ${alias}    IN    @{browserAlias}
            Run Keyword IF    'CcsPortal' in '''${alias}'''    Run Keyword    If displayed close the Unauthorised Security Request modal popup after selecting 'btn_new_researchInteraction'
        END
        sleep    3s
        Wait for pega masking icon to complete
    ELSE
        Do Nothing
    END

