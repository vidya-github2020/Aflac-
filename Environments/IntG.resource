###########################################################################
# All variables that are likely to be different between environments should
# be stored in the environment specific file
###########################################################################

* Variables
${WebChat_URL}                https://sell-int.sc10.aws.nonprod.aflac.com/
# ${WebChat_URL}              http://customerservicechat-intg.aflac.com/AflacAgentWebChat/Cobrowse.html
${Pega_SignIn_URL}            https://customerservice-intg.aflac.com/prweb
${sso_Pega_SignIn_URL}        https://customerservice-intg.aflac.com/prweb/PRAuth/CustomerService

${AgentEmailWebForm_URL}      http://customerservicechat-intg.aflac.com/AgentEmailWebForm/index.html
# ${AgentEmailWebForm_URL}    http://customerservicechat-intg.aflac.com/AgentEmailWebForm/indexCookiePassServiceFail.html
# ${AgentEmailWebForm_URL}    http://customerservicechat-intg.aflac.com/AgentEmailWebFormQA/indexCookieFail.html

#==========================================================================#
#                            C360 Agent Users                              #
#==========================================================================#
# PAVE Agent CCS Logins
# MCS = ModelChatSpecialist || MCSup = ModelChatSupervisor || CS = ClaimsSpecialist || GS = GeneralSpecialist

${Agent_ccs_uName}            MCS001
${Agent2_ccs_uName}           MCS002
${Agent3_ccs_uName}           MCS003
${Agent4_ccs_uName}           MCS004
${Agent5_ccs_uName}           MCS005
${Agent6_ccs_uName}           MCS006
${Agent7_ccs_uName}           MCS007
${Agent8_ccs_uName}           MCS008
${Agent9_ccs_uName}           MCS009
${Agent10_ccs_uName}          MCS010
${Manager_ccs_uName}          MCSup1
${Claims_ccs_uName}           CS0001
${General_ccs_uName}          GS0001

# AccountChannel Agent CCS Logins
# AU = Account User
${AccountUser_ccs_uName}              AU0000
${AccountUserOne_ccs_uName}           AU0001
${AccountUserTwo_ccs_uName}           AU0002
${AccountUserThree_ccs_uName}         AU0003
${AccountUserFour_ccs_uName}          AU0004
${AccountUserFive_ccs_uName}          AU0005
${AccountUserSix_ccs_uName}           AU0006

# AccountChannel and AgentChannel C360 Pwd
${gPWD}                       Aflac@003

#==========================================================================#
#                       SmartScreens Agent Users                           #
#==========================================================================#
# Agent SmartScreen Logins - Please see PolicyHolder IntG.resource file

#==========================================================================#
#                       Digital Messaging Agent Users                      #
#==========================================================================#
#Digital Market Agent ccs logins
${DM_Agent_ccs_uName}         EF0705@lab.com
${DM_Agent_ccs_password}      T6x4xv7VxBiP5ch

#==========================================================================#
#                           Other Users                                    #
#==========================================================================#
# PAVE Agent Username
${gLoggedInUserName}         Darvin

# Email SSO CCS Logins
${sso_ccsUser}               EF0031
${sso_ccsUser_pwd}           X02#M6@u5$$g@t4M5cjF
${email_ccs_uName}           TestEf0031 testEF0031

${sso_ccsManager}            EF0032
${sso_ccsManager_pwd}        s3GEx@9Bb1$#82l5cjFW

${sso_ccsAdmin}              EF0033
${sso_ccsAdmin_pwd}          j0M6@u5$s3GExZ#3Vrhd
