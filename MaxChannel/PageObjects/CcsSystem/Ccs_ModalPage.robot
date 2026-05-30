###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}MaxChannel${/}Settings.resource

* Variables
${btn_DM_MaxChat_wrapUpChat}         xpath://button[contains(@data-test-id,'2018080902461007071328') and contains(@title,'Wrap up')]
${btn_DM_MaxChat_confirmWrapUp}      xpath://button[@data-test-id="20180305072357039640364"]      

* Keywords
The DM MaxChat CCS ${acceptDeclineOption} the live chat modal alert
    Sleep    2s
    Run Keyword    The MaxChat CCS ${acceptDeclineOption} the live chat alert
  
The DM MaxChat CCS ends chat and wraps up the session
    Run Keyword    The MaxChat ccs ends the live chat session
    Run Keyword    The DM MaxChat ccs confirms and wraps up the session

The DM MaxChat ccs confirms and wraps up the session
    Switch to the CcsPortal browser
    Wait for pega masking icon to complete
    Run Keyword    Get the MaxChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PegaGadget1Ifr iFrame
        Run Keyword    Select the DM MaxChat CCS wrap up chat button in C360
        Sleep    2s
        Run Keyword    Select the MaxChat CCS wrap up reason Other from the reason dropdown
        Sleep    2s
        Run Keyword    Select the MaxChat CCS wrap up submit button
    ELSE
        Do Nothing
    END

Select the DM MaxChat CCS wrap up chat button in C360
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_DM_MaxChat_wrapUpChat}    timeout=${mTimeout}
    Run Keyword    Click the MaxChat button    btn_DM_MaxChat_wrapUpChat  

Select the DM MaxChat CCS Confirm wrap up button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_DM_MaxChat_confirmWrapUp}    timeout=${mTimeout}
    Run Keyword    Click the MaxChat button    btn_DM_MaxChat_confirmWrapUp  


