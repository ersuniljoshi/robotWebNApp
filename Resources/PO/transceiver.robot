*** Settings ***
Library  Selenium2Library
Resource  ../locator.robot
Resource  random.robot
Resource  utils_overlay.robot

*** Keywords ***

user add transceiver

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_transceiver_from_menu}
    wait until page contains  Transceiver Manager
    click element  ${transceiver_dropdown}
    ${tmp_transc_part_no}  fill the text with random number
    input text  ${click_text_part_no}  ${tmp_transc_part_no}

    user waits for the page to load
    mouse down  ${submit_button_transceiver}
    wait until element is visible  ${submit_button_transceiver}

    user waits for the page to load
    click element  ${submit_button_transceiver}

    user waits for the page to load
    set selenium timeout  10
    wait until element is visible  ${platform_led_navigate_to_led_click_menu}

    user waits for the page to load
user edit transceiver
    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    sleep  1
    click element  ${click_transceiver_from_menu}
    wait until page contains  Transceiver Manager
    click element  ${transceiver_dropdown}
    ${tmp_transc_part_no}  fill the text with random number
    input text  ${click_text_part_no}  ${tmp_transc_part_no}

    user waits for the page to load
    mouse down  ${submit_button_transceiver}
    wait until element is visible  ${submit_button_transceiver}

    user waits for the page to load
    click element  ${submit_button_transceiver}

    user waits for the page to load

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    sleep  1
    click element  ${click_transceiver_from_menu}
    wait until page contains  Transceiver Manager
    click element  ${transceiver_dropdown}
    clear element text  ${click_text_part_no}
    ${tmp_transc_part_no_edit}  fill the text with random number
    input text  ${click_text_part_no}  ${tmp_transc_part_no_edit}

    user waits for the page to load
    mouse down  ${submit_button_transceiver}
    wait until element is visible  ${submit_button_transceiver}

    user waits for the page to load
    click element  ${submit_button_transceiver}

    user waits for the page to load
user must view from drpdown

    user waits for the page to load
    wait until element is visible  ${platform_led_navigate_to_led_click_menu}
    click element  ${platform_led_navigate_to_led_click_menu}
    sleep  1
    click element  ${click_transceiver_from_menu}
    wait until page contains  Transceiver Manager
    click element  ${transceiver_dropdown}
    page should contain element  ${transceiver_dropdown}

    user waits for the page to load