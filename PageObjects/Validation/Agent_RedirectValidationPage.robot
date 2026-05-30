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
${url_userEnv_SysT}    https://sell-syst.aflac.com
${url_pega_Dev}        https://aflac-dt7-internal.pegacloud.io/prweb/F5Y3xlFp7yrm7afLL6kGYjxj7EeVQxE5*/!STANDARD
${url_pega_Intg}       https://aflac-dt8-internal.pegacloud.io/prweb/F5Y3xlFp7yrm7afLL6kGYjxj7EeVQxE5*/!STANDARD
${url_AboutBlank}      about:blank

${url_claimStatus}          https://my.aflac.com/portal/server.pt?open=514&objID=1229034&mode=2
# ${url_compensation}         https://myrpm.aflac.com/Home.aspx
${url_compensation}         https://my.aflac.com/portal/server.pt?open=512&objID=1330&mode=2
${url_pendedBusiness}       https://my.aflac.com/portal/server.pt
# ${url_pendedBusiness}       https://my.aflac.com/portal/server.pt?open=512&objID=1673&&PageID=1261209&mode=2
# ${url_pendedBusiness}       https://pendedbusiness.aflac.com/ClientServices/Default.aspx
# ${url_pendedBusiness}       https://pendedbusiness.aflac.com/XPBIappSearch.aspx?sid=AAA98
${url_statements}           https://sell.aflac.com/Reporting%20and%20Recruiting/Reporting%20and%20Managing/Statements.aspx
${url_wellnessReporting}    http://ptportpr.hq.aflac.com/CIS/AccountProfileWeb/search.aspx?mode=more
${url_featureInfo}          https://my.aflac.com/portal/server.pt
# ${url_featureInfo}          https://portalst.aflac.com/portal/server.pt/mypage/home_page/0

* Keywords

