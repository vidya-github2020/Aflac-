*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
*** Keywords ***

Click the SmartScreen button
    [Arguments]    ${buttonName}
    Sleep    2s
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Select the SmartScreen button when visible ${buttonName}
    ELSE
        IF    '${buttonName}'=='opt_PolicyHolderChat_ChatWithCCS' or '${buttonName}'=='opt_PolicyHolderChat_policyInfo_ChatWithCcs' or '${buttonName}'=='opt_PolicyHolderChat_policyChanges_ChatWithCcs' or '${buttonName}'=='opt_PolicyHolderChat_claimCenter_ChatWithCcs' or '${buttonName}'=='opt_PolicyHolderChat_myAccount_ChatWithCcs' or '${buttonName}'=='opt_PolicyHolderChat_makePayments_ChatWithCcs' or '${buttonName}'=='opt_PolicyHolderChat_agent_connectToAflacRep'
            Verify that the menu option is not displayed in the list    ${${buttonName}}
        ELSE
            Run Keyword    Select the PolicyHolderChat button when visible ${buttonName}
        END
    END

Enter the value as '${inputValue}' in the ${fieldName} field on ${screenName} screen in the ${section} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_SSUser_${section}_${screenName}_${fieldName}}    timeout=${sTimeout}
    Wait Until Element Is Enabled    ${fld_SSUser_${section}_${screenName}_${fieldName}}    timeout=${sTimeout}    
    Scroll button or label into view    ${fld_SSUser_${section}_${screenName}_${fieldName}}
    Input Text    ${fld_SSUser_${section}_${screenName}_${fieldName}}    ${inputValue}   
    Press Keys    None    TAB
    Sleep    3s

Verify ${ConfirmationMessage} confirmationmsg is displayed on the ${taskOption} screen of the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    2s
    Wait Until Element Is Visible    ${lbl_Policyholder_${taskSection}_${taskOption}_ConfirmationMsg}    timeout=${xlTimeout}
    Scroll button or label into view    ${lbl_Policyholder_${taskSection}_${taskOption}_ConfirmationMsg}
    Wait for pega masking icon to complete
    ${actualText}    Get Text    ${lbl_Policyholder_${taskSection}_${taskOption}_ConfirmationMsg}

    IF    '${ConfirmationMessage}'=='M1LetterGeneration'
        ${expectedText}    Set Variable    ${lbl_Policyholder_${taskSection}_${taskOption}_txt}
    ELSE IF    '${ConfirmationMessage}'=='ReprintEnvelope'
        ${expectedText}    Set Variable    ${lbl_Policyholder_${taskSection}_${taskOption}_txt}
    ELSE IF    '${ConfirmationMessage}'=='UpdateAddress'      
         ${expectedText}    Set Variable    ${lbl_Policyholder_${taskSection}_${taskOption}_txt}
    ELSE IF    '${ConfirmationMessage}'=='BuildRemark'      
         ${expectedText}    Set Variable    ${lbl_Policyholder_${taskSection}_${taskOption}_txt}
    ELSE IF    '${ConfirmationMessage}'=='OrderDuplicatePolicy'      
         ${expectedText}    Set Variable    ${lbl_Policyholder_${taskSection}_${taskOption}_txt}
    ELSE IF    '${ConfirmationMessage}'=='PendedBusiness'      
         ${expectedText}    Set Variable    ${lbl_Policyholder_${taskSection}_${taskOption}_txt}                
    END
    Should Be Equal    ${actualText}    ${expectedText}  

Close current Interaction on C360 screen
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${SS_C360_Intent_wrapupBtn}    timeout=${sTimeout}
    IF     '${status}'=='True'    
     Mouse Over    ${SS_C360_Intent_wrapupBtn}
     Click Element    ${SS_C360_Intent_wrapupBtn}
     ${status}=    Run Keyword And Return Status    Alert Should Be Present     timeout=${sTimeout}
    END    


   


  
