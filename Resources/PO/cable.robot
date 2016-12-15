*** Settings ***
Library  Selenium2Library
Resource  ../locator.robot
Resource  random.robot
Resource  utils_overlay.robot


*** Keywords ***
user add cable

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_cable_from_menu}
    wait until page contains  Cable Manager
    user waits for the page to load
    ${tmp_card_part_no}  fill the text with random number
    #input text  ${click_text_part_no}  ${text_part_no}
    input text  ${click_text_part_no}  ${tmp_card_part_no}
    input text  ${click_text_desc}  ${text_part_desc}
    click element  ${begin_cable_dropdown}
    click element  ${end_cable_dropdown}
    click element  ${medium_dropdown}
    input text  ${click_cable_length}  ${text_cable_length}
    click element  ${save_button_add_led}

    user waits for the page to load
user edit cable

    #maximize browser window
    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_cable_from_menu}
    wait until page contains  Cable Manager
    click element  ${cable_dropdown}

    user waits for the page to load
    click element  ${end_cable_plug_type_dropdown}

    user waits for the page to load
    click element  ${submit_button}
    page should contain element  ${label_success}

    user waits for the page to load
user must view from dropdown

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    user waits for the page to load
    click element  ${click_cable_from_menu}
    wait until page contains  Cable Manager
    click element  ${cable_dropdown}
    set selenium timeout  10
    page should contain element  ${cable_dropdown}

    user waits for the page to load