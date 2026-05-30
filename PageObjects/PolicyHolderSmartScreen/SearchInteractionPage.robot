*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot

*** Variables ***
${PH_Home}                    xpath://span[text()='Home']
${PH_SS_New}                  xpath://a[contains(@title,'New')]  
${btn_Search}                 xpath://button[@data-test-id='SearchCustomer-SearchPH']
${PH_SS_header}               xpath://*[text()='Smart Screens']
${btn_Indexing}               xpath://span[@class="menu-item-title-wrap"]/span[contains(text(),'Indexing')]
${PH_SS_closeBtn}             xpath://span[@id='close']
${PegaGadget1Ifr}             xpath://iframe[@title ='New' and @name ='PegaGadget1Ifr']
${PH_SS_wrapupBtn}            xpath://button[@data-test-id='Wrapup_Search_Screen' and @title='Wrap Up']
${results_FirstName}          xpath:(//span[@data-test-id="2016072109335505834280"])[2] 
${results_Cert_FirstName}          xpath:(//span[@data-test-id="2016072109335505834280"])[5] 
${SSresults_FirstName}        xpath:(//span[@data-test-id="2016072109335505834280"][contains(text(),'{}')])[2]
${results_SSN_field}          xpath://span[contains(text(),'last 4 digits') and contains(text(),'SSN')]
${results_DOB_field}          xpath://span[contains(text(),'Please enter Valid DOB')]
${results_c360Screen}         xpath:(//h3[text()='Insured Information'])[2]
${PH_SS_searchfields}         xpath://span[text()='Start interaction with customer']
${fld_tooltipText_DOB}        xpath://i[contains(@title,'DOB')]
${SSC360_Intent_Close}        xpath://i[@title='Close']
${fld_tooltipText_SSN}        xpath://i[contains(@title,'9 digit SSN')]
${fld_tooltipText_City}       xpath://i[contains(@title,'enter valid City')]
${fld_tooltipText_State}      xpath://i[contains(@title,'enter valid State')]
${results_Zipcode_field}      xpath://span[contains(text(),'Please enter the valid 5 digit Zip Code.')]
${dd_SearchAsField_Agent}     xpath://option[@value='Agent']
${results_LastName_field}     xpath://span[@data-test-id='202209190333500557727']
${results_PHLastName_field}   xpath://span[@data-test-id='202209190333500557727']
${fld_tooltipText_Zipcode}    xpath://i[contains(@title,'Zip Code')]

${SSC360_Intent_Close}                  xpath://i[@title='Close']  
${results_c360Screen}                   xpath:(//h3[text()='Insured Information'])[2]
${results_FirstName}                    xpath:(//span[@data-test-id="2016072109335505834280"])[2]
${results_FirstName_field}              xpath://span[@data-test-id='202209190333500557727']
${results_PHFirstName_field}            xpath://span[@data-test-id='202209190333500557727']
${Account_SSC360_wrapupBtn}             xpath://button[@data-test-id='2018080902461007071328']
${dd_SearchAsField_Account}             xpath://option[@value='Account']
${fld_tooltipText_Address1}             xpath://i[contains(@title,'enter valid Address 1')]
${fld_tooltipText_LastName}             xpath://i[@title='Please enter full Last Name.']
${results_ClaimNumber_field}            xpath://span[contains(text(),'valid Claim Number')]
${results_CheckNumber_field}            xpath://span[contains(text(),'Please enter valid 10 character Check Number.')]
${fld_tooltipText_FirstName}            xpath://i[@title='Please enter full First Name.']
${results_EmailAddress_field}           xpath://span[contains(text(),'Email ID')]
${opt_SearchAsField_Selector}           xpath://select[@data-test-id='202011120156530350557' and @class='standard']
${results_PolicyNumber_field}           xpath://span[contains(text(),'valid Policy Number')]
${results_WritingNumber_field}          xpath://span[contains(text(),'Writing Number')]
${fld_tooltipText_ClaimNumber}          xpath://i[contains(@title,'Claim Number')]
${fld_tooltipText_PolicyNumber}         xpath://i[contains(@title,'Policy Number')]
${SSC360_Intent_InProgressTask}         xpath://a[contains(@title,'In progress task' )]        
${dd_SearchAsField_PolicyHolder}        xpath://option[@value='Policyholder']
${dd_SearchAsField_CheckInquiry}        xpath://option[@value='Check Inquiry']
${fld_informational_msg_Zipcode}        ${fld_informational_msg_LastName}
${fld_informational_msg_LastName}       xpath://span[@data-test-id='202209190333500557727']
${fld_informational_msg_FirstName}      ${fld_informational_msg_LastName}
${fld_tooltipText_Address1Checkbox}     xpath://i[contains(@title,'Address 1 is searched partially')]  
${fld_tooltipText_LastNameCheckbox}     xpath://i[contains(@title,'Last Name is searched partially')]
${fld_tooltipText_FirstNameCheckbox}    xpath://i[contains(@title,'First Name is searched partially')]

${fld_SSUser_SearchInteraction_Search_DOB}                       xpath://input[@data-test-id='PH-SearchStringDOB']
${fld_SSUser_SearchInteraction_Search_SSN}                       xpath://input[@data-test-id='PH-SearchStringSSN']
${fld_SSUser_SearchInteraction_Search_City}                      xpath://input[@data-test-id='Address-SearchStringCity']
${fld_SSUser_SearchInteraction_Search_Zipcode}                   xpath://input[@data-test-id='Address-SearchStringZipCode']
${fld_SSUser_SearchInteraction_Search_Address1}                   xpath://input[@data-test-id='Address-SearchStringAddressLine1'] 
${fld_SSUser_SearchInteraction_Search_LastName}                  xpath://input[@data-test-id='PH-SearchStringLastName']
${fld_SSUser_SearchInteraction_Search_FirstName}                 xpath://input[@data-test-id='PH-SearchStringFirstName']
${fld_SSUser_SearchInteraction_Search_ClaimNumber}               xpath://input[@data-test-id='PH-SearchStringClaimNumber' and contains(@name,'ClaimNumber')]
${fld_SSUser_SearchInteraction_Search_PolicyNumber}              xpath://input[@data-test-id='PH-SearchStringPolicyNumber' and @id='65f015eb']
${fld_SSUser_SearchInteraction_Search_CertificateNumber}         xpath://input[@data-test-id='202407220603080660361' and @id='60be5a77']
${fld_SSUser_SearchInteraction_Search_EmailAddress}              xpath://input[@data-test-id='Agent-SearchStringEmailID']
${fld_SSUser_SearchInteraction_Search_WritingNumber}             xpath://input[@data-test-id='Agent-SearchStringWritingNo']
${dd_policyHolderChat_Search_SearchInteraction_State}            xpath://select[@data-test-id='Address-SearchStringState']
${btn_policyHolderChat_Search_SearchInteraction_Reset}           xpath://button[@data-test-id='SearchCustomer-Reset']
${btn_policyHolderChat_Search_SearchInteraction_Search}          xpath://button[@data-test-id='SearchCustomer-Search']
${btn_policyHolderChat_Search_SearchInteraction_Address}         xpath://div[text()='Address']
${chkBox_policyHolderChat_SearchInteraction_Search_Address}      xpath://input[@data-test-id='Account-SearchStringFullAccountNameIncluded' and contains(@name,'FullAddress')]
${chkBox_policyHolderChat_SearchInteraction_Search_LastName}     xpath://input[@data-test-id='Account-SearchStringFullAccountNameIncluded' and contains(@name,'LastName')]
${dd_policyHolderChat_Search_SearchInteraction_State_option}     xpath://option[@value='dropDownOption']
${chkBox_policyHolderChat_SearchInteraction_Search_FirstName}    xpath://input[@data-test-id='Account-SearchStringFullAccountNameIncluded' and contains(@name,'FirstName')]
${fld_SSUser_Header_SSN}                                         xpath://div[@data-test-id="202210201338230589278"]//span[@data-test-id='201705020725070683151764']

${ValidationText}       xpath://span[@data-test-id="202209190333500557727"]
*** Keywords ***
Verify header text as ${headerText}
     Wait Until Element Is Visible    ${PH_SS_header}    timeout=${sTimeout}
     ${actualText}     Get Text    ${PH_SS_header}
     Should Be Equal    ${actualText}    ${headerText}
     Sleep    2s

On the ${paveChatbot} open a new indexing interaction
    Select the ${paveChatbot} New button in SmartScreen interaction page
    Select the ${paveChatbot} indexing button

Select the ${smartScreen} New button in SmartScreen interaction page
    Switch to the CcsPortal browser
    Run Keyword    Get the ${smartScreen} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        SeleniumLibrary.Unselect Frame
        Run Keyword    Click the ${smartScreen} button    PH_SS_New
    ELSE
        Do Nothing
    END        

Select the ${smartScreen} indexing button
    Run Keyword    Get the ${smartScreen} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Run Keyword    Click the ${smartScreen} button    btn_Indexing     
        Sleep    3s
        Wait for pega masking icon to complete
    ELSE
        Do Nothing
    END

Verify the search results data in search interaction page
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${results_FirstName}    timeout=${lTimeout}
    ${actualText}    Get Text    ${results_FirstName}  
    ${expectedText}    Convert To String        PEARLIE BRODIGAN
    IF    '${actualText}'=='MURASAKI A BORRETA'
    ${expectedText}    Convert To String        MURASAKI A BORRETA
    ELSE IF    '${actualText}'=='DRAKE A CRITTENDEN'
    ${expectedText}    Convert To String        DRAKE A CRITTENDEN
    Should Be Equal    ${actualText}    ${expectedText}
    ELSE IF    '${actualText}'=='JAMES F FEINTUCH'
    ${expectedText}    Convert To String        JAMES F FEINTUCH
    ELSE IF    '${actualText}'=='SUMAYYAH V BOTEILHO'
    ${expectedText}    Convert To String        SUMAYYAH V BOTEILHO
    ELSE IF    '${actualText}'=='NEILL T ROCKWELL'
    ${expectedText}    Convert To String        NEILL T ROCKWELL
    ELSE IF    '${actualText}'=='GAGE HOUSE'
    ${expectedText}    Convert To String        GAGE HOUSE    
    ELSE IF    '${actualText}'=='FABRICIO EICHSTADT'
    ${expectedText}    Convert To String       FABRICIO EICHSTADT
    ELSE IF    '${actualText}'=='PHILLIPA D BLOSFIELD'
    ${expectedText}    Convert To String       PHILLIPA D BLOSFIELD
    ELSE IF    '${actualText}'=='SUMAYYAH BOTEILHO'
    ${expectedText}    Convert To String        SUMAYYAH BOTEILHO
    ELSE IF    '${actualText}'=='MEI-LIEN BOTTORFF'
    ${expectedText}    Convert To String        MEI-LIEN BOTTORFF
    ELSE
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s
    END

Verify ${field} validation error message in search interaction page
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${results_${field}_field}    timeout=${lTimeout}
    ${actualText}    Get Text    ${results_${field}_field}
    IF    '${field}'=='SSN'
        ${expectedText}    Convert To String    Please enter the last 4 digits or full 9 digit SSN (xxxx or xxx-xx-xxxx or xxxxxxxxx)
    ELSE IF    '${field}'=='FirstName'
        ${expectedText}    Convert To String    Please enter Last Name to enable Search button.
    ELSE IF    '${field}'=='PHFirstName'
        ${expectedText}    Convert To String    Please enter Last Name.
    ELSE IF    '${field}'=='LastName'
        ${expectedText}    Convert To String    Please enter First Name to enable Search button.
    ELSE IF    '${field}'=='PHLastName'
        ${expectedText}    Convert To String    Please enter First Name.
    ELSE IF    '${field}'=='PolicyNumber'
        ${expectedText}    Convert To String    Please enter a valid Policy Number.
    ELSE IF     '${field}'=='WritingNumber'
        ${expectedText}    Convert To String    Invalid value specified for Writing Number.
    ELSE IF     '${field}'=='EmailAddress'
        ${expectedText}    Convert To String    Invalid value specified for Email ID.
    ELSE IF    '${field}'=='ClaimNumber'
        ${expectedText}    Convert To String    Please enter a valid Claim Number.
    ELSE IF    '${field}'=='DOB'
        ${expectedText}    Convert To String    Please enter Valid DOB in mm/dd/yyyy format
    ELSE IF    '${field}'=='Zipcode'
        ${expectedText}    Convert To String    Please enter the valid 5 digit Zip Code.
    ELSE IF    '${field}'=='CompanyName'
        ${expectedText}    Convert To String    Please enter valid Company Name with at least first 2 characters.
    ELSE IF    '${field}'=='TaxID'
        ${expectedText}    Convert To String    Please enter the valid 9 digit Tax ID.
    END
    Should Contain    ${actualText}    ${expectedText}
    Sleep    2s

Close current interaction 
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${PH_SS_wrapupBtn}    timeout=${sTimeout}
    IF     '${status}'=='True'    
     Mouse Over    ${PH_SS_wrapupBtn}
     Click Element    ${PH_SS_wrapupBtn}
     ${status}=    Run Keyword And Return Status    Alert Should Be Present     timeout=${sTimeout}
     ${status}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${PH_SS_closeBtn}    timeout=${sTimeout}
       IF    '${status}'=='True'
         Click Element    ${PH_SS_closeBtn}
         Sleep    2s 
        END          
    ELSE   
     ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Account_SSC360_wrapupBtn}    timeout=${sTimeout}
       IF    '${status}'=='True'
         Mouse Over    ${Account_SSC360_wrapupBtn}
         Click Element    ${Account_SSC360_wrapupBtn} 
         
        END 
    END                

#Verify the ${field} informational message in policyholder search interaction page
    #Wait for pega masking icon to complete
    #Wait Until Element Is Visible    ${fld_informational_msg_${field}}    timeout=${mTimeout}
    #${actualText}    Get Text    ${fld_informational_msg_${field}}
    #IF    '${field}'=='FirstName'
    #    ${expectedText}    Convert To String    Please enter First Name.
    #ELSE IF    '${field}'=='LastName'
    #    ${expectedText}    Convert To String    Please enter Last Name.
    #ELSE IF    '${field}'=='Zipcode'
    #    ${expectedText}    Convert To String    Please enter 1 more field from City, State and Zip Code.    
    #END
    #Should Contain    ${actualText}    ${expectedText}
    #Sleep    2s

Verify the validation message ${text} in policyholder search interaction page
    Wait for pega masking icon to complete
    Sleep    2s
    #${ValidationTxt}    format string    ${ValidationText}   ${text}
    #Wait Until Element is Visible    ${ValidationTxt}

    ${actualText}    Get Text    ${ValidationText}
    Should Be Equal    ${actualText}    ${text}		 
    Sleep    2s   


Verify the tooltip text for ${field} field in search interaction page
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_tooltiptext_${field}}    timeout=${mTimeout}
    Mouse Over    ${fld_tooltiptext_${field}}
    ${actualText}    Get Element Attribute    ${fld_tooltiptext_${field}}    title
    IF    '${field}'=='FirstName'
        ${expectedText}    Convert To String    Please enter full First Name. 
    ELSE IF    '${field}'=='FirstNameCheckbox'
        ${expectedText}    Convert To String    Select the check box only if First Name is searched partially. Enter at least first 3 characters.
    ELSE IF    '${field}'=='LastName'
        ${expectedText}    Convert To String    Please enter full Last Name.  
    ELSE IF    '${field}'=='LastNameCheckbox'
        ${expectedText}    Convert To String    Select the check box only if Last Name is searched partially. Enter at least first 2 characters.
    ELSE IF    '${field}'=='SSN'
        ${expectedText}    Convert To String    Please enter the last 4 digits or full 9 digit SSN (xxxx or xxx-xx-xxxx or xxxxxxxxx)
    ELSE IF    '${field}'=='PolicyNumber'
        ${expectedText}    Convert To String    Please enter a valid Policy Number.
    ELSE IF    '${field}'=='ClaimNumber'
        ${expectedText}    Convert To String    Please enter a valid Claim Number.
    ELSE IF    '${field}'=='DOB'
        ${expectedText}    Convert To String    Please enter valid DOB in MM/DD/YYYY format.
    ELSE IF    '${field}'=='Address1'
        ${expectedText}    Convert To String    Please enter valid Address 1. 
    ELSE IF    '${field}'=='Address1Checkbox'
        ${expectedText}    Convert To String    Select the check box only if Address 1 is searched partially.
    ELSE IF    '${field}'=='City'
        ${expectedText}    Convert To String    Please enter valid City. 
    ELSE IF    '${field}'=='State'
        ${expectedText}    Convert To String    Please enter valid State.
    ELSE IF    '${field}'=='Zipcode'
        ${expectedText}    Convert To String    Please enter the valid 5 digit Zip Code                                                    
    END
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s

Verify the c360 screen details when search as ${search_Field}
    IF  '${search_Field}' == 'Policyholder'
    Wait for pega masking icon to complete
    Select the PegaGadget1Ifr iFrame     
    Wait Until Element Is Visible    ${results_FirstName}    timeout=${lTimeout}
    Double Click Element    ${results_FirstName}
    Sleep    2s
    ELSE 
    Wait for pega masking icon to complete
    Select the PegaGadget1Ifr iFrame     
    Wait Until Element Is Visible    ${results_Cert_FirstName}    timeout=${lTimeout}
    Double Click Element    ${results_Cert_FirstName}
    Sleep    2s
    END
    Wait Until Element Is Visible    ${results_c360Screen}    timeout=${lTimeout}   
    ${actualText}    Get Text    ${results_c360Screen} 
    ${expectedText}    Convert To String        Insured Information  
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s

Double click on the search results for ${name}
    Wait for pega masking icon to complete
    Select the PegaGadget1Ifr iFrame   
    ${Full_Name}=    Format string    ${SSresults_FirstName}     ${name}
    Wait Until Element Is Enabled    ${Full_Name}    timeout=${sTimeout}
    Double Click Element    ${Full_Name}
    Wait Until Element Is Visible    ${results_c360Screen}    timeout=${mTimeout}   
    ${actualText}    Get Text    ${results_c360Screen} 
    ${expectedText}    Convert To String        Insured Information  
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s

Verify Header details section ${header} in smart screen
    IF    '${header}'=='visible'
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${header_PolicyHolder_Name}    timeout=${mTimeout}
    Sleep    2s    
    ELSE IF    '${header}'=='notVisible'
    Wait for pega masking icon to complete
    Wait Until Element Is Not Visible    ${header_PolicyHolder_Name}    timeout=${mTimeout}
    Sleep    2s
    END

Close current Intent on C360 screen
  Select the PegaGadget1Ifr iFrame   
	${status}=    Run Keyword And Return Status   Wait Until Element Is Visible    ${SSC360_Intent_InProgressTask}      timeout=${sTimeout}
    IF    '${status}'=='True'
	   Mouse Over        ${SSC360_Intent_InProgressTask} 
	   Click Element    ${SSC360_Intent_Close}
    ELSE
        DO NOTHING
    END	   

   