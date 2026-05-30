###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

* Variables
## ----- Chat Flow - Dev and INTG  ----- ##
${lbl_AgentChat_agentSummary_AgentChatFlow_Phone}                217-840-2918
${lbl_AgentChat_agentSummary_AgentChatFlow_Address}              2311S SHURTS CIR, URBANA,IL, 61801
#${lbl_AgentChat_agentSummary_AgentChatFlow_CityStateZip}         STORM LAKE,IA 50588
${lbl_AgentChat_agentSummary_AgentChatFlow_DoB}                  07/31/1950
${lbl_AgentChat_agentSummary_AgentChatFlow_SSN}                  *****3542
${lbl_AgentChat_agentSummary_AgentChatFlow_ContractState}        IL
${lbl_AgentChat_agentSummary_AgentChatFlow_WritingNumber}        ET472
${lbl_AgentChat_agentSummary_AgentChatFlow_Level}                ${EMPTY}
${lbl_AgentChat_agentSummary_AgentChatFlow_Status}               Terminated wo/Vesting
${lbl_AgentChat_agentSummary_AgentChatFlow_IVRProfileStatus}     NOT FOUND
${lbl_AgentChat_agentSummary_AgentChatFlow_StatementBalance}     $0.00
${lbl_AgentChat_agentSummary_AgentChatFlow_CustomerLabel_txt}    Agent

## ----- Chat Flow - Syst ----- ##
${lbl_AgentChat_agentSummary_AgentChatFlow_Phone_Syst}                217-840-2918
${lbl_AgentChat_agentSummary_AgentChatFlow_Address_Syst}              2311S SHURTS CIR, URBANA,IL, 61801
#lbl_AgentChat_agentSummary_AgentChatFlow_CityStateZip_Syst}         CHARLOTTE, MI 48813
${lbl_AgentChat_agentSummary_AgentChatFlow_DoB_Syst}                  07/31/1950
#${lbl_AgentChat_agentSummary_AgentChatFlow_Email_Syst}                darci_wertz@us.aflacqa.com
${lbl_AgentChat_agentSummary_AgentChatFlow_SSN_Syst}                  *****3542
${lbl_AgentChat_agentSummary_AgentChatFlow_ContractState_Syst}        IL
${lbl_AgentChat_agentSummary_AgentChatFlow_WritingNumber_Syst}        ET472
${lbl_AgentChat_agentSummary_AgentChatFlow_Level_Syst}                ––
${lbl_AgentChat_agentSummary_AgentChatFlow_Status_Syst}               Terminated wo/Vesting
${lbl_AgentChat_agentSummary_AgentChatFlow_IVRProfileStatus_Syst}     NOT FOUND
${lbl_AgentChat_agentSummary_AgentChatFlow_StatementBalance_Syst}     $0.00

## ----- Email Form Flow - Dev and Intg ----- ##
${lbl_AgentChat_agentSummary_EmailFormFlow_Phone}            ${EMPTY}
${lbl_AgentChat_agentSummary_EmailFormFlow_Address}          1209 SUMMIT AVE, 408
${lbl_AgentChat_agentSummary_EmailFormFlow_CityStateZip}     JERSEY CITY, NJ 07307
${lbl_AgentChat_agentSummary_EmailFormFlow_DoB}              ${EMPTY}
${lbl_AgentChat_agentSummary_EmailFormFlow_SSN}              ${EMPTY}
${lbl_AgentChat_agentSummary_EmailFormFlow_CIF}              ${EMPTY}
${lbl_AgentChat_agentSummary_EmailFormFlow_WritingNumber}    AAAA6
${lbl_AgentChat_agentSummary_EmailFormFlow_Language}         ${EMPTY}
${lbl_AgentChat_agentSummary_EmailFormFlow_UpdatedBy}        ${EMPTY}
${lbl_AgentChat_agentSummary_EmailFormFlow_LastUpdate}       ${EMPTY}

## ----- Email Form Flow - Syst ----- ##
${lbl_AgentChat_agentSummary_EmailFormFlow_Phone_Syst}            0
${lbl_AgentChat_agentSummary_EmailFormFlow_Address_Syst}          255 CAPRI TERRACE,
${lbl_AgentChat_agentSummary_EmailFormFlow_CityStateZip_Syst}     PARK RIDGE, NJ 07656
${lbl_AgentChat_agentSummary_EmailFormFlow_Email_Syst}            michael_shappell@us.aflacqa.com
${lbl_AgentChat_agentSummary_EmailFormFlow_CIF_Syst}              ${EMPTY}
${lbl_AgentChat_agentSummary_EmailFormFlow_WritingNumber_Syst}    AAAB9
${lbl_AgentChat_agentSummary_EmailFormFlow_Language_Syst}         ${EMPTY}
${lbl_AgentChat_agentSummary_EmailFormFlow_UpdatedBy_Syst}        ${EMPTY}
${lbl_AgentChat_agentSummary_EmailFormFlow_LastUpdate_Syst}       ${EMPTY}


* Keywords

