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
${link_clickHere}    xpath:(//a[contains(text(),'here')])[last()]

${url_makeAPayment}    https://intg-max.aws.nonprod.aflac.com/payments/summary
${url_learnAboutALetter}    https://intg-max.aws.nonprod.aflac.com/home
${url_aflacPortal}    https://my.aflac.com/portal/server.pt


* Keywords

