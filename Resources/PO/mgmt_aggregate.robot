*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Resource  ../locator.robot
Resource  random.robot
Resource  utils_overlay.robot


*** Keywords ***
user add value to platform value

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_mgmt_aggregate_from_menu}
    wait until page contains  Manage Aggregate & Volume Sizing
    click element  ${platform_group_dropdown}

    select checkbox  ${platform_confg_checkbox}
    #checkbox should be selected  xpath=//*[@id="MainContent_ddlPlatformConfig"]/tbody/tr[2]/td/label

    click button  ${next_button_ontap}

    select checkbox  ${text_combo_checkbox}
    click button  ${show_button}
    sleep  3
    page should contain element  ${text_combo_checkbox}
    sleep  3
user view export feature

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_mgmt_aggregate_from_menu}
    wait until page contains  Manage Aggregate & Volume Sizing
    click element  ${platform_group_dropdown}

    select checkbox  ${platform_confg_checkbox}
    #checkbox should be selected  xpath=//*[@id="MainContent_ddlPlatformConfig"]/tbody/tr[2]/td/label

    click button  ${next_button_ontap}

    user waits for the page to load
    #select checkbox  xpath=//*[@id="MainContent_txtCombo"]
    click element  ${text_combo_checkbox}
    select checkbox  ${ontab_version_dropdown}

    user waits for the page to load
    click button  ${show_button}

    user waits for the page to load
    page should contain element  ${text_combo_checkbox}

    user waits for the page to load
    click element  ${export_button_mgmt}

    user waits for the page to load
    ${file}  Wait Until Keyword Succeeds  1 min  2 sec  utilities.Download should be done  ${download directory}  xls

    user waits for the page to load

utilities.Download should be done

    user waits for the page to load
    [Arguments]  ${directory}  ${extension}
    [Documentation]  Verifies that the directory has only one folder and it is not a temp file.
    ...
    ...  Returns path to the file
    ${files}  List Files In Directory  ${directory}
    Length Should Be  ${files}  1  Should be only one file in the download folder
    Should Not Match Regexp  ${files[0]}  (?i).*\\.tmp  Chrome is still downloading a file
    Should Match Regexp  ${files[0]}  (?i).*\\.${extension}  Invalid File
    ${file}  Join Path  ${directory}  ${files[0]}
    log to console  File was successfully downloaded to ${file}
    remove file  ${file}
    [Return]  ${file}

    user waits for the page to load
#user view copy from to feature
#    sleep  5
#    click element  xpath=//*[@id="nav"]/li/a/img
#    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[10]/span/a
#    wait until page contains  Manage Aggregate & Volume Sizing
#    click element  xpath=//*[@id="MainContent_ddlPlatformGroup"]/option[2]
#    #sleep  3
#    select checkbox  xpath=//*[@id="MainContent_ddlPlatformConfig_1"]
#    click button  xpath=//*[@id="BtnhNextOntap"]
#    sleep  3
#    #select checkbox  xpath=//*[@id="MainContent_txtCombo"]
#    click element  xpath=//*[@id="MainContent_txtCombo"]
#    select checkbox  xpath=//*[@id="MainContent_ddlontabversion_1"]
#    sleep  1
#    select checkbox  xpath=//*[@id="MainContent_ddlontabversion_2"]
#    sleep  1
#    click button  xpath=//*[@id="MainContent_BtnhShow"]
#    sleep  3
#    page should contain element  xpath=//*[@id="MainContent_txtCombo"]
#    sleep  3
#    click element  xpath=//*[@id="Col1_Copy"]
#    select checkbox  xpath=//*[@id="selectallCol1_Copy"]
#    sleep  2
#    select checkbox  xpath=//*[@id="chkrow0Col2_Copy"]
#    sleep  2
#    click element  xpath=//*[@id="MainContent_BtnCopyFrom"]
#    sleep  3
#    click element  xpath=//*[@id="fancySaveConfirmXslt_no"]
#    sleep  2
