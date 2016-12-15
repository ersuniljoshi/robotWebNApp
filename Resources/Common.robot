*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections
Resource  PO/utils_overlay.robot
Resource  locator.robot

*** Variables ***
${URL}  http://epic-dev.netapp.com:2222/NetLogin.aspx
${BROWSER}  Chrome
*** Keywords ***
Begin Test Case

    ${now}  Get Time  epoch
    ${download directory}  Join Path  ${OUTPUT DIR}  downloads_${now}
    Create Directory  ${download directory}
    set global variable  ${download directory}
    ${chrome options} =  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
    ${disabled}  Create List  Chrome PDF Viewer
    ${prefs}  Create Dictionary  download.default_directory=${download directory}  plugins.plugins_disabled=${disabled}
    Call Method  ${chrome options}  add_experimental_option  prefs  ${prefs}
    Create Webdriver  ${BROWSER}  chrome_options=${chrome options}
    Go to  ${URL}
    maximize browser window
    input text  ${click_user}  ${username}
    input text  ${click_pwd}  ${password}
    click button  ${Login_button}


End Test Case

    user waits for the page to load
    sleep  15
    click element  ${sign_out_button}
    close browser
