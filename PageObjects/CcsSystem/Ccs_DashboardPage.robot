###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource

* Variables
${lbl_PolicyHolder_ccs_uName}        xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'PolicyHolderSpecialist_ccs')]
${lbl_PolicyHolder_ccs_uName_txt}    PolicyHolderSpecialist_ccs

${lbl_PClaims_ccs_uName}          xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'PHClaimsSpecialist_ccs')]
${lbl_PHClaims_ccs_uName_txt}     PHClaimsSpecialist_ccs
${lbl_PHPayment_ccs_uName}        xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'PHPaymentSpecialist_ccs')]
${lbl_PHPayment_ccs_uName_txt}    PHPaymentSpecialist_ccs

${lbl_PolicyHolderClaims_ccs_uName}         xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'PolicyHolderClaimsSpecialist_ccs')]
${lbl_PolicyHolderClaims_ccs_uName_txt}     PolicyHolderClaimsSpecialist_ccs
${lbl_PolicyHolderPayment_ccs_uName}        xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'PolicyHolderPaymentSpecialist_ccs')]
${lbl_PolicyHolderPayment_ccs_uName_txt}    PolicyHolderPaymentSpecialist_ccs


* Keywords

