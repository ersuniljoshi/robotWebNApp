*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Resource  ../locator.robot
Resource  random.robot
Resource  utils_overlay.robot

*** Variables ***
${cookies}
*** Keywords ***

ccg_datagrid_AFF

    user waits for the page to load
    click element  ${ccg_datagrid_AFF_click_menu}
    click element  ${ccg_datagrid_AFF_click_ccg}
    wait until page contains  Controller Configuration Guide

    user waits for the page to load
    click element  ${ccg_datagrid_AFF_platform_family_dropdown}
    wait until page contains  AFF A200

    user waits for the page to load
    click element  ${ccg_datagrid_AFF_platform_model_dropdown}
    wait until page contains  AFF A200 (Razor Medium AFF)

    user waits for the page to load

data gets autofilled_AFF

    user waits for the page to load
    wait until element is visible  ${ccg_data_autofilled_AFF_palform_config}
    wait until element is visible  ${ccg_data_autofilled_AFF_report_style}
    wait until element is visible  ${ccg_data_autofilled_AFF_show}

    user waits for the page to load

ccg_datagrid_FAS

    user waits for the page to load
    click element  ${ccg_datagrid_FAS_platform_family}
    wait until page contains  FAS200
    click element  ${ccg_datagrid_FAS_platform_model}

    user waits for the page to load
    wait until page contains element  ${ccg_datagrid_FAS_platform_model}

    user waits for the page to load

data gets autofilled_FAS
    wait until element is visible  ${ccg_data_autofilled_FAS_report_style}
    wait until element is visible  ${ccg_data_autofilled_FAS_show}

    user waits for the page to load

verify ccg run report

    user waits for the page to load
    click element  ${ccg_run_report_button}

    user waits for the page to load
verify ccg export

#    click element  xpath=//*[@id="MainContent_btnExportReportFake"]

#    Download File  [Arguments]  ${COOKIE}  ${URL}  ${FILENAME}
#    ${COOKIE_VALUE} =  Call Selenium API  get_cookie_by_name  ${COOKIE}
#    Run and Return RC  wget --cookies=on --header "Cookie: ${COOKIE}=${COOKIE_VALUE}" -O ${OUTPUT_DIR}${/}${FILENAME} ${URL}

    user waits for the page to load
    sleep  1
    click element  ${ccg_export_button}

    user waits for the page to load
    # wait for download to finish
    ${file}  Wait Until Keyword Succeeds  1 min  2 sec  Download should be done  ${download directory}  xls

    user waits for the page to load

Download should be done
    sleep  3
    [Arguments]  ${directory}  ${extension}
    [Documentation]  Verifies that the directory has only one folder and it is not a temp file.
    ...
    ...  Returns path to the file
    ${files}  List Files In Directory  ${directory}
    #Length Should Be  ${files}  1  Should be only one file in the download folder
    Should Not Match Regexp  ${files[0]}  (?i).*\\.tmp  Chrome is still downloading a file
    Should Match Regexp  ${files[0]}  (?i).*\\.${extension}  Invalid File
    ${file}  Join Path  ${directory}  ${files[0]}
    log to console  File was successfully downloaded to ${file}
    remove file  ${file}
    [Return]  ${file}
    sleep  1