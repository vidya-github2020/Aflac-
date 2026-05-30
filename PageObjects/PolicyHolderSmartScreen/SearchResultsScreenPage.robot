*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot

*** Variables ***
${results_Close}             xpath://button[@title='Close modal']
${results_Company}           xpath://td[@data-attribute-name='Company']//div[contains(@class,'oflowDivM')]
${lbl_SystemResponse}        xpath://span[@data-test-id='202212200222440893690']
${results_company_Tier1}     xpath://span[contains(text(),'We are not servicing Tier 1 policies')]
${results_company_Argus}     xpath://span[contains(text(),'We are not servicing Argus policies')] 
${results_company_Wynsure}    xpath://span[contains(text(),'We are not serving WYN policies')] 
${results_company_Genelco}    xpath://span[contains(text(),'We are not servicing Genelco policies')] 
##Pended Business##
${btn_policyholder_Action_SearchResults}                   xpath://button[@data-test-id='202211161800090009128']
${radioBtn_policyHolderChat_Search_Tier1}                  xpath:(//label[contains(text(),'Tier 1')])[1]
${lbl_Policyholder_Search_PendedBusiness_txt}               The Destination code and remarks has been updated for the selected Policy Number.
${dd_policyHolderChat_Search_SixCode_PolicyNumber}          ${dd_policyHolderChat_Search_PendedBusiness_PolicyNumber}
${dd_policyHolderChat_Search_SixCode_PolicyNumber1}          ${dd_policyHolderChat_Search_SixCode_PolicyNumber}
${dd_policyHolderChat_Search_SixCode_PolicyNumber2}          ${dd_policyHolderChat_Search_SixCode_PolicyNumber}
${btn_policyHolderChat_Search_SearchInteraction_Close}      xpath://button[@data-test-id='202212090309440420641']
${btn_policyHolderChat_Search_SearchInteraction_Submit}     xpath://button[@data-test-id='202212090313380139781']
${btn_policyHolderChat_Search_SearchInteraction_Action}     xpath://button[@data-test-id='202211161800090009128']
${btn_policyHolderChat_Search_SearchInteraction_SixCode}     xpath://span[contains(text(),'Six Code')]
${btn_policyHolderChat_Search_SearchInteraction_SixCodeClose}      xpath://button[@data-test-id='202212090313380138884']

${dd_policyHolderChat_Search_SixCode_PolicyNumber_option}    xpath://option[contains(text(),'dropDownOption')]
${dd_policyHolderChat_Search_PendedBusiness_PolicyNumber}    xpath://select[@data-test-id='202211211751580184599']
${lbl_Policyholder_Search_PendedBusiness_ConfirmationMsg}    xpath://div[@data-test-id='202212090309120497324']
${dd_policyHolderChat_Search_SixCode_PolicyNumber1_option}    xpath://option[contains(text(),'dropDownOption')]
${dd_policyHolderChat_Search_SixCode_PolicyNumber2_option}    xpath://option[contains(text(),'dropDownOption')]
${dd_policyHolderChat_Search_PendedBusiness_DestinationCode}           xpath://select[@data-test-id='202211161833270419765']
${btn_policyHolderChat_Search_SearchInteraction_SixCodeEntry}          xpath://button[@data-test-id='202212090313380139781']
${btn_policyHolderChat_Search_SearchInteraction_PendedBusiness}        xpath://span[contains(text(),'Pended Business')]
${dd_policyHolderChat_Search_PendedBusiness_PolicyNumber_option}       xpath://option[contains(text(),'Pending')]
${dd_policyHolderChat_Search_PendedBusiness_DestinationCode_option}    xpath://option[contains(text(),'37')]

${SmartScreen_CompanyRadioBtn}      xpath://div[@data-test-id="20221004074601063543"]//label[contains(text(),'{}')]

*** Keywords ***
Verify the search results company data in search interaction page
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${results_Company}     timeout=${lTimeout}
    ${actualText}    Get Text    ${results_Company}   
    ${expectedText}    Convert To String        Tier 1 
    IF    '${actualText}'=='Argus'
     ${expectedText}    Convert To String        Argus
     ELSE IF    '${actualText}'=='Wynsure'
     ${expectedText}    Convert To String        Wynsure
     Should Be Equal    ${actualText}    ${expectedText}
     ELSE IF    '${actualText}'=='Genelco'
     ${expectedText}    Convert To String        Genelco
    ELSE
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s
    END

Verify the ${company} radiobutton in the search result table
   Sleep    2s
   ${CompanyRadioBtn}    format string    ${SmartScreen_CompanyRadioBtn}   ${company}
   Wait Until Element is Visible    ${CompanyRadioBtn}


          
Verify default message display of ${company} company policies in search interaction page    
   Wait Until Element Is Visible    ${results_FirstName}    timeout=${sTimeout}
    Double Click Element    ${results_FirstName}
    Sleep    2s
    ${actualText}=    Get Text    ${results_company_${company}}
     IF   	'${company}'=='Tier1'  	
    ${expectedText}    Convert To String            We are not servicing Tier 1 policies       
    ELSE IF   '${company}'=='Argus'
        ${expectedText}    Convert To String        We are not servicing Argus policies            
    ELSE IF    '${company}'=='Wynsure'
        ${expectedText}    Convert To String        We are not serving WYN policies        
    ELSE IF    '${company}'=='Genelco'
        ${expectedText}    Convert To String        We are not servicing Genelco policies         
    END	     
        Should Be Equal    ${actualText}    ${expectedText}		 
        Click Button        ${results_Close}
        Sleep    2s   

Verify ${button} button disabled in ${page} page  
    Wait Until Element Is Visible    ${btn_policyholder_${button}_${page}}    timeout=${mTimeout}        
    Element Should Be Disabled    ${btn_policyholder_${button}_${page}}
    Sleep    2s

Verify the system response message as '${message}'
    Wait Until Element Is Visible    ${lbl_SystemResponse}     timeout=${lTimeout}
    ${actualText}    Get Text    ${lbl_SystemResponse}   
    IF   	'${message}'=='Not on file'  	
    ${expectedText}    Convert To String        ERROR: POLICY NUMBER NOT ON FILE.
    ELSE IF   '${message}'=='Does not have a 6-code'
        ${expectedText}    Convert To String        ERROR: POLICY ENTERED DOES NOT HAVE A 6-CODE STATUS                           
    END	     
        Should Be Equal    ${actualText}    ${expectedText}		 
        Sleep    2s   