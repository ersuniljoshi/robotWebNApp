*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Resource  ../locator.robot
Resource  random.robot
Resource  utils_overlay.robot

*** Keywords ***
user view export feature

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_power_from_menu}
    wait until page contains  Power Management

    user waits for the page to load
    click element  ${export_button}

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
verify filter

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_power_from_menu}
    wait until page contains  Power Management

    user waits for the page to load
    click element  ${click_text_config}
    select checkbox  ${checklist_text_config}

    user waits for the page to load
    click element  ${filter_button}

    user waits for the page to load
    page should contain element  ${click_text_config}

    user waits for the page to load
user add new configuration functionality
    sleep  5
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_power_from_menu}
    wait until page contains  Power Management
    sleep  3
    input text  ${click_text_config_power}  ${text_config_power}
    sleep  1
    #click element  xpath=//*[@id="ui-id-4"]
    click element  ${click_text_config_type_filter}
    select checkbox  ${checkbox_config_type_filter}
    sleep  6
    click element  xpath=//*[@id="btnNext"]
    sleep  6
    input text  xpath=//*[@id="MainContent_GridPower_txtAmpsTypical_0"]  1
    input text  xpath=//*[@id="MainContent_GridPower_txtAmpsWorst_0"]  2
    input text  xpath=//*[@id="MainContent_GridPower_txtWattsTypical_0"]  3
    input text  xpath=//*[@id="MainContent_GridPower_txtWattsWorst_0"]  4
    input text  xpath=//*[@id="MainContent_GridPower_txtBTUsPerHourTypical_0"]  5
    input text  xpath=//*[@id="MainContent_GridPower_txtBTUsPerHourWorst_0"]  6
    input text  xpath=//*[@id="MainContent_GridPower_txtInrushPeakAmps_0"]  7
    click element  xpath=//*[@id="BtnSaveData"]
    sleep  5
    page should contain element  xpath=//*[@id="MainContent_GridPower_txtAmpsTypical_0"]
user edit configuration name
    sleep  5
    click element  xpath=//*[@id="nav"]/li/a/img
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[14]/span/a
    wait until page contains  Power Management
    sleep  3
    click element  xpath=//*[@id="ConfigNameAnchor" and .=2960]
    page should contain element  xpath=//*[@id="txtConfiguration"]
    sleep  2
    click element  xpath=//*[@id="MainContent_GridPower_txtAmpsTypical_0"]
    clear element text  xpath=//*[@id="MainContent_GridPower_txtAmpsTypical_0"]
    input text  xpath=//*[@id="MainContent_GridPower_txtAmpsTypical_0"]  0.2
    click element  xpath=//*[@id="BtnSaveData"]
    sleep  5
user should view button functionality
    #sleep  5
    user waits for the page to load
    click element  xpath=//*[@id="nav"]/li/a/img
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[14]/span/a
    wait until page contains  Power Management
    #sleep  3
    user waits for the page to load
    # change
    #click element  xpath=//*[@id="ConfigNameAnchor" and .=2960]
    click element  xpath=//*[@id="ConfigNameAnchor" and .='6TB NL-SAS 725WAC']
    #sleep  4
    user waits for the page to load
    page should contain element  xpath=//*[@id="txtConfiguration"]
    click element  xpath=//*[@id="btnShowallConfig"]
    #sleep  3
    user waits for the page to load
    page should contain element  xpath=//*[@id="ConfigNameAnchor" and .='6TB NL-SAS 725WAC']
    #sleep  5
    user waits for the page to load