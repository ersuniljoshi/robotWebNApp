*** Settings ***
Library  Selenium2Library
Resource  ../locator.robot
Resource  random.robot
Resource  utils_overlay.robot


*** Keywords ***
user add FRU button

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_fru_from_menu}
    wait until page contains  Field Replaceable Units

    user waits for the page to load
    #set selenium timeout  6
    #wait until page contains element  xpath=//*[@id="modal"]
    #set selenium timeout  10
    #wait until element is visible  xpath=//*[@id="modal"]  20
    user waits for the page to load
    click element  ${add_fru_button}
    ${tmp_fru_part_no}  fill the text with random number
    input text  ${click_text_part_no}  ${tmp_fru_part_no}
    click element  ${fru_type_dropdown}
    input text  ${click_mfg_part_no}  ${text_mfg_part_no}
    user waits for the page to load
    click element  ${shift_select_right_button}
    user waits for the page to load
    click element  ${save_fru_details}

    user waits for the page to load
user edit FRU
    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_fru_from_menu}
    wait until page contains  Field Replaceable Units

    user waits for the page to load
    #set selenium timeout  6
    #wait until page contains element  xpath=//*[@id="modal"]
    #set selenium timeout  10
    #wait until element is visible  xpath=//*[@id="modal"]  20
    click element  ${add_fru_button}
    ${tmp_fru_part_no_edit}  fill the text with random number
    input text  ${click_text_part_no}  ${tmp_fru_part_no_edit}
    click element  ${fru_type_dropdown}
    input text  ${click_mfg_part_no}  ${text_mfg_part_no}
    click element  ${shift_select_right_button}
    click element  ${save_fru_details}

    user waits for the page to load

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_fru_from_menu}
    wait until page contains  Field Replaceable Units

    user waits for the page to load
    #click element  ${edit_link_data}
    sleep  2
    click element  xpath=//*[@class="fruclass" and .='${tmp_fru_part_no_edit}']

    user waits for the page to load
    click element  ${fru_type_dropdown}
    click element  ${save_fru_details}

    user waits for the page to load
FRU matrix

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_fru_from_menu}
    wait until page contains  Field Replaceable Units

    user waits for the page to load
    click element  ${fru_matrix}
    select checkbox  ${platform_compatibility_transceiver}
    click element  ${element_checkbox}

    user waits for the page to load
