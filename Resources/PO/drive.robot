*** Settings ***
Library  Selenium2Library
Resource  ../locator.robot
Resource  random.robot
Resource  utils_overlay.robot

*** Keywords ***
user add drive

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_drive_from_menu}
    wait until page contains  Drive Manager
    click element  ${add_drive_button}

    user waits for the page to load
    select frame  ${iframe}

    user waits for the page to load
    ${tmp_drive_part_no}  fill the text with random number
    input text  ${click_text_part_no}  ${tmp_drive_part_no}
    input text  ${click_text_description}  ${text_description}
    input text  ${click_marketing_capacity}  ${text_marketing_capacity}
    click element  ${drive_speed_dropdown}
    click element  ${drive_class_dropdown}
    click element  ${marketing_drive_type_dropdown}
    click element  ${form_factor_dropdown}
    input text  ${click_text_interface_speed}  ${text_interface_speed}
    click element  ${shift_select_right_button_drive}
    click element  ${save_button}
    sleep  2

    user waits for the page to load
    select window  title=NetApp EPIC - Drive Overview
    sleep  2
    user waits for the page to load
    page should contain  ${tmp_drive_part_no}
user edit drive
    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_drive_from_menu}
    wait until page contains  Drive Manager
    click element  ${add_drive_button}

    user waits for the page to load
    select frame  ${iframe}

    user waits for the page to load
    ${tmp_drive_part_no_edit}  fill the text with random number
    input text  ${click_text_part_no}  ${tmp_drive_part_no_edit}
    input text  ${click_text_description}  ${text_description}
    input text  ${click_marketing_capacity}  ${text_marketing_capacity}
    click element  ${drive_speed_dropdown}
    click element  ${drive_class_dropdown}
    click element  ${marketing_drive_type_dropdown}
    click element  ${form_factor_dropdown}
    input text  ${click_text_interface_speed}  ${text_interface_speed}
    click element  ${shift_select_right_button_drive}
    click element  ${save_button}

    user waits for the page to load
    select window  title=NetApp EPIC - Drive Overview

    user waits for the page to load

    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_drive_from_menu}
    wait until page contains  Drive Manager
    ##change
    ##click element  xpath=//*[@id="HyperLink1" and .='121']

    user waits for the page to load
    # using directly xpath
    #click element  ${edit_drive_data}
    click element  xpath=//*[@id="HyperLink1" and .='${tmp_drive_part_no_edit}']
    wait until page contains  Part Number

    user waits for the page to load
    click element  ${drive_general_data}

    user waits for the page to load
    select frame  ${iframe}

    user waits for the page to load
    input text  ${click_text_description}  ${new_text_description}

    user waits for the page to load
    click element  ${save_button}

    user waits for the page to load
    select window  title=NetApp EPIC - Drive Overview

    user waits for the page to load
    page should contain  ${tmp_drive_part_no_edit}

    user waits for the page to load

export to excel feature

    user waits for the page to load
    user waits for the page to load
    sleep  3
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_drive_from_menu}
    wait until page contains  Drive Manager
    user waits for the page to load
    ${tmp_drive_part_no_edit}  fill the text with random number
    click element  xpath=//*[@id="HyperLink1" and .='${tmp_drive_part_no_edit}']

    user waits for the page to load
    wait until page contains  Part Number

    user waits for the page to load
    click element  ${export_button}

    user waits for the page to load








