###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}EverwellChannel${/}Settings.resource

* Variables

* Keywords
The EverwellChat CCS ${acceptDeclineOption} the live chat modal alert
    Sleep    3s
    Connect to an EverwellChat CCS    Yes
    ${status}=    Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_highVolumeOfChat
    IF    '${status}'=='True'
        Do Nothing
    ELSE
        &{browserAlias}=    Get Browser Aliases
        FOR    ${alias}    IN    @{browserAlias}
            Run Keyword IF    'CcsPortal' in '''${alias}'''    Run Keyword    If displayed close the Unauthorised Security Request modal popup after selecting '${btn_modal_${acceptDeclineOption}Chat}'
        END
        Run Keyword    The EverwellChat CCS ${acceptDeclineOption} the live chat alert
    END

