*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${btn_closeModalSplash}    xpath://button[contains(@type,'button') and contains(@aria-label,'Close')]
${ccsInterationTab}        xpath://span[contains(@class,'iconCloseSmall') and (@tabindex="0")]
${getPegaIframe}           xpath://iframe[@id='iFrameID']
${chatbotIframe}       xpath://iframe[@id='chatWebembed']
${width}                   1920
${height}                  1080
${btn_AcceptAll}         xpath://button[@id='onetrust-accept-btn-handler' and text()='Accept All']

* Keywords
## --- Agent Chat --- ##
Open Chrome Browser to Page
    [Documentation]     Opens _Google Chrome_ to a given web page.
    ...                 For more information on what capabilities that _Google Chrome_
    ...                 supports, see [https://sites.google.com/a/chromium.org/chromedriver/capabilities%7Cthis Capabilities & ChromeOptions page].
    ...                 If your OS is Windows, it will open the browser and run tests;
    ...                 Otherwise it will look for the executable browser path (used for Azure pipelines)
    [Arguments]    ${URL}   ${alias}
    ${platform}=    Evaluate    sys.platform    sys
    ${status}=    Run Keyword And Return Status    Should Contain    ${platform}    win

    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    test-type
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Call Method    ${chrome_options}    add_argument    --ignore-urlfetcher-cert-requests
    Call Method    ${chrome_options}    add_argument    --disable-signin-frame-client-certs
    IF    '${status}'=='True'
        Set Library Search Order    SeleniumLibrary    AflacCommon
        Create Webdriver    Chrome     alias=${alias}     options=${chrome_options}
        #Set Window Size    ${width}    ${height}
    ELSE
        Call Method    ${chrome_options}    add_argument    --headless
        Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
        Call Method    ${chrome_options}    add_argument    --ignore-urlfetcher-cert-requests
        Call Method    ${chrome_options}    add_argument    --disable-signin-frame-client-certs
        # Create Webdriver    Chrome     alias=${alias}     chrome_options=${chrome_options}   executable_path=/usr/bin/WebDrivers/chromedriver
        Set Library Search Order    SeleniumLibrary    AflacCommon
        Open Browser    ${URL}     Chrome    alias=${alias}    options=${chrome_options}    remote_url=${remote_url}
        Set Window Size    ${width}    ${height}
    END
    Go To    ${URL}

Open the live chat page
    Open Chrome Browser to Page    URL=${WebChat_URL}    alias=AgentChatbot
    Maximize Browser Window
    Delete All Cookies
    Handle the Privacy popup    ${btn_AcceptAll}
    Reload Page
    #IF    '${gEnvironment}'=='SysT'
    #    Check to see what chatbot you are running tests for
    #    Check to see if the modal splash is displayed on the home screen
    #END

Open the live DMchat page
    Open Chrome Browser to Page    URL=${WebChat_URL}    alias=AgentChatbot
    Maximize Browser Window
    Delete All Cookies
    IF    '${gEnvironment}'=='SysT'
        Check to see what chatbot you are running tests for
        Check to see if the modal splash is displayed on the home screen
    END

Check to see what chatbot you are running tests for
    IF    '${gPaveChatbot}'=='PolicyHolderChat'
        Do Nothing
    ELSE
        Log in as an sso agent
    END

Check to see if the modal splash is displayed on the home screen
    ${present}=    Run Keyword And Return Status    Is the SSO login portal splash displayed
    IF    '${present}'=='True'
        Wait Until Element Is Visible    ${btn_closeModalSplash}     timeout=${xxlTimeout}
        Click Element    ${btn_closeModalSplash}
    ELSE
        Do Nothing
    END

Is the SSO login portal splash displayed
    Wait Until Element Is Visible    ${btn_closeModalSplash}    timeout=${sTimeout}

Initiate the ${paveChatbot} live chat session
    sleep    2s
    Run Keyword    Select the ${paveChatbot} Chat With Us button
    Select the Let's Chat button

Initiate the ${paveChatbot} live DMchat session
    Run Keyword    Select the ${paveChatbot} DMChat With Us button

Log in as an sso agent
    Enter sso details and login as an agent
    Log to console    Waiting for the sso agent chatbot portal to load
    Sleep    3s

The agent opens a ${paveChatbot} live chat session
    Open the live chat page
    Enter AgentChat Login Details
    Run Keyword    Initiate the ${paveChatbot} live chat session


## --- CCS Portal --- ##
Open the CCS portal ${pegaUrl}
    Open Chrome Browser to Page    URL=${${pegaUrl}}    alias=CcsPortal
    Maximize Browser Window
    Delete All Cookies

Open the Max_CCS portal ${pegaUrl}
    Open Chrome Browser to Page    URL=${${pegaUrl}}    alias=MaxCcsPortal
    Maximize Browser Window
    Delete All Cookies

Open the Everwell_CCS portal ${pegaUrl}
    Open Chrome Browser to Page    URL=${${pegaUrl}}    alias=EverwellCcsPortal
    Maximize Browser Window
    Delete All Cookies

Log into the ${paveChatbot} CCS portal with ${ccsUser}
    Sleep    5s
    IF    '${gEnvironment}'=='SysT'
        Run Keyword    Log in as a ${paveChatbot} live chat sso ccs ${ccsUser}
        Close the CCS interation tab if one is open
    ELSE
        Run Keyword    Log into the ${paveChatbot} Pega portal with ${${ccsUser}_ccs_uName}
        Close the CCS interation tab if one is open
    END

Log in as a ${paveChatbot} live chat sso ccs ${ccsUser}
    Enter sso details and login as an ${ccsUser}
    Go To    ${Pega_SignIn_URL}
    Log to console    Waiting for sso ccs portal to load
    Sleep    5s

Log into the ${paveChatbot} Pega portal with ${uName}
    Wait Until Element Is Visible    ${txtBox_UserName}
    Input Text    ${txtBox_UserName}    ${uName}    clear=True
    Input Password    ${txtBox_Password}    ${gPWD}    clear=True
    Run Keyword      Select the ${paveChatbot} login button
    Log to console    Waiting for the CCS portal to load
    Sleep    5s
    Wait for pega masking icon to complete

Close the CCS interation tab if one is open
    Register Keyword To Run On Failure    Do Nothing
    ${present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${ccsInterationTab}    timeout=${sTimeout}
    IF    '${present}'=='True'
        Wait Until Element Is Visible    ${ccsInterationTab}     timeout=${xxlTimeout}
        Click Element   ${ccsInterationTab}
        Wait for pega masking icon to complete
    ELSE
        Do Nothing
    END
    Register Keyword To Run On Failure    Capture Page Screenshot

Log out from the ${paveChatbot} ccs portal
    Switch Browser    CcsPortal
    Unselect Frame
    Run Keyword    Select the ${paveChatbot} ccs option button
    Sleep    1s
    Handle Logout Alert

Handle Logout Alert
    Wait Until Element Is Visible    ${btn_ccsOptions_logOff}    timeout=${xxlTimeout}
    Click element    ${btn_ccsOptions_logOff}
    ${message}=    Run Keyword And Ignore Error    Handle Alert


## --- SSO Login Screen --- ##
Enter sso details and login as an ${ccsUname}
    Sleep    1s
    Wait Until Element Is Visible    ${sso_txtBox_UserName}
    Input Text    ${sso_txtBox_UserName}    ${sso_${ccsUname}}    clear=True
    Input Password    ${sso_txtBox_Password}    ${sso_${ccsUname}_pwd}    clear=True
    Press Keys    None    TAB
    Press Keys    None    TAB
    Wait Until Element Is Visible    ${sso_btn_Login}     timeout=${xxlTimeout}
    Click Element    ${sso_btn_Login}



## --- Page iFrames --- ##
Select the ${PegaGadgetIframe} iFrame
    Unselect Frame
    ${setPegaIframe1}=    Replace String    ${getPegaIframe}    iFrameID    ${PegaGadgetIframe}
    ${present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${setPegaIframe1}    timeout=${sTimeout}
    IF    '${present}'=='True'
        Select Frame    ${PegaGadgetIframe}
    ELSE
        ${setPegaIframe2}=    Replace String    ${getPegaIframe}    iFrameID    PegaGadget2Ifr
        ${isPresent}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${setPegaIframe2}    timeout=${sTimeout}
        IF    '${isPresent}'=='True'
            Select Frame    ${setPegaIframe2}
        ELSE
            ${setPegaIframe0}=    Replace String    ${getPegaIframe}    iFrameID    PegaGadget3Ifr
            ${isPresent}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${setPegaIframe0}    timeout=${sTimeout}
            IF    '${isPresent}'=='True'
                Select Frame    ${setPegaIframe3}
            ELSE
                ${setPegaIframe0}=    Replace String    ${getPegaIframe}    iFrameID    PegaGadget0Ifr
                ${isPresent}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${setPegaIframe0}    timeout=${sTimeout}
                IF    '${isPresent}'=='True'
                    Select Frame    ${setPegaIframe0}
                ELSE
                    Fail    iFrame not found on the page
                END
            END
        END
    END

Select the Pega iFrame
    Unselect Frame
    ${found}=    Set Variable    False
    FOR    ${i}    IN RANGE    0    16
        ${setPegaIframe}=    Replace String    ${getPegaIframe}    iFrameID    PegaGadget${i}Ifr
        ${isPresent}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${setPegaIframe}    timeout=${sTimeout}
        IF    '${isPresent}'=='True'
            Select Frame    ${setPegaIframe}
            ${found}=    Set Variable    True
            BREAK
        END
    END

    IF    '${found}'=='False'
        Fail    iFrame not found on the page
    END

Select Chatbot iFrame
    Select Frame    ${chatbotIframe}

## --- Switch Browsers --- ##
Switch to the ${switchBrowser} browser
    Switch Browser    ${switchBrowser}
