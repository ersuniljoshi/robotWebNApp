*** Settings ***
Library  Selenium2Library
Resource  ../locator.robot
Resource  random.robot
Resource  utils_overlay.robot

*** Variables ***
${IsAjaxComplete}  ${EMPTY}


*** Keywords ***
user add switch

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_switch_from_menu}
    wait until page contains  Switch Manager

    user waits for the page to load
    click element  ${add_switch_button}

    user waits for the page to load
    click element  ${switch_general_info}

    user waits for the page to load
    select frame  ${iframe}

    user waits for the page to load
    click element  ${manufacturer_dropdown}
    ${tmp_switch_part_no}  fill the text with random number
    input text  ${click_text_part_no}  ${tmp_switch_part_no}
    click element  ${switch_type_dropdowbn}
    input text  ${click_text_count}  ${text_count}
    user waits for the page to load
    input text  ${click_text_description_switch}  ${text_description}

    user waits for the page to load
    click element  ${apply_button_pop_up}

    user waits for the page to load
    select window  title=NetApp EPIC - Switch Overview

    user waits for the page to load
    #page should contain  fair
    # edit switch
    click element  ${switch_general_info}

    user waits for the page to load
    select frame  ${iframe}

    user waits for the page to load
    click element  ${manufacturer_dropdown}
    click element  ${apply_button_pop_up}

    user waits for the page to load
    select window  title=NetApp EPIC - Switch Overview

    user waits for the page to load
    #page should contain  AMD
    #switch bundle link
    click element  ${click_switch_bundles}

    user waits for the page to load
    #switch module link
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_switch_from_menu}
    wait until page contains  Switch Manager

    user waits for the page to load
    click element  ${click_switch_modules}

    user waits for the page to load
    page should contain  Part Number
    # add switch module button

    user waits for the page to load
    click element  ${add_switch_module}

    user waits for the page to load
    ${text_switch_part_no}  fill the text with random number
    input text  ${click_text_part_no}  ${text_switch_part_no}
    user waits for the page to load
    input text  ${click_text_description_switch}  ${text_description}
    click element  ${apply_button_pop_up}

    user waits for the page to load
    click element  ${click_yes}

    user waits for the page to load
    page should contain element  ${label_success}

    user waits for the page to load
    click element  ${apply_button_pop_up}

    user waits for the page to load
    click element  ${confirm_ok}
    page should contain  ${text_switch_part_no}
user edit switch module

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_switch_from_menu}
    #wait until page contains  Switch Manager

    user waits for the page to load
    click element  ${grid_switches_edit}
#    : FOR  ${INDEX}  IN  RANGE  1  5000
#    \  ${IsAjaxComplete}  Execute JavaScript   return window.jQuery!=undefined && jQuery.active==0
#    \  Log  ${INDEX}
#    \  Log  ${IsAjaxComplete}
#    \  Run Keyword If  ${IsAjaxComplete}==True  Exit For Loop

    user waits for the page to load
#    set selenium timeout  20
#    wait until element is visible  xpath=//div[@class="blockUI blockOverlay"]
    click element  ${switch_general_info}

    user waits for the page to load
    select frame  ${iframe}

    user waits for the page to load
    clear element text  ${click_text_count}
    input text  ${click_text_count}  ${text_count_edit}
    click element  ${apply_button_pop_up}

    user waits for the page to load
    select window  title=NetApp EPIC - Switch Overview
    page should contain  5

