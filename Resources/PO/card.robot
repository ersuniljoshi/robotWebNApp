*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Resource  ../locator.robot
Resource  utils_overlay.robot
Resource  random.robot
*** Variables ***

*** Keywords ***
user add card

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_card_from_menu}
    wait until page contains  Adapter Card Manager
    user waits for the page to load
    sleep  2
    click element  ${add_card_button}
    sleep  2
    user waits for the page to load
    sleep  3
    select frame  ${iframe}

    user waits for the page to load
    ${tmp_card_no}  fill the text with random number
    input text  ${click_card_part_no}  ${tmp_card_no}
    input text  ${click_card_description}  ${card_description}
    click element  ${slot_type_ddl}
    ${tmp_card_port_no}  fill the text with random number
    input text  ${click_port_count_no}  ${tmp_card_port_no}
    click element  ${apply_button}

    user waits for the page to load
    select window  title=NetApp EPIC - Card Overview

    user waits for the page to load
    wait until page contains  ${card_description}

    user waits for the page to load
user edit card


    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_card_from_menu}
    wait until page contains  Adapter Card Manager
    sleep  2
    click element  ${add_card_button}
    sleep  2
    user waits for the page to load
    sleep  3
    select frame  ${iframe}

    user waits for the page to load
    ${tmp_card_no_edit}  fill the text with random number
    input text  ${click_card_part_no}  ${tmp_card_no_edit}
    input text  ${click_card_description}  ${card_description}
    click element  ${slot_type_ddl}
    ${tmp_card_port_no}  fill the text with random number
    input text  ${click_port_count_no}  ${tmp_card_port_no}
    click element  ${apply_button}

    user waits for the page to load
    select window  title=NetApp EPIC - Card Overview

    user waits for the page to load
    sleep  2
   # user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_card_from_menu}
    wait until page contains  Adapter Card Manager
    #change
    #click element  //*[@id="CardAnchor" and .='144']
    # trying
    #click element  ${edit_card_data}
    user waits for the page to load
    click element  xpath=//*[@id="CardAnchor" and .='${tmp_card_no_edit}']
    wait until page contains  Adapter Card Manager

    user waits for the page to load
    sleep  4
    click element  ${edit_link_button}

    user waits for the page to load
    sleep  3
    select frame  ${iframe}

    user waits for the page to load
    ${tmp_card_port_no_edit}  fill the text with random number
    input text  ${click_card_part_no}  ${tmp_card_port_no_edit}
    click element  ${apply_button}

    user waits for the page to load
    select window  title=NetApp EPIC - Card Overview

    user waits for the page to load
    #wait until page contains  ${edit_new_part_count_no}
data properly displayed



    #####
    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_card_from_menu}
    wait until page contains  Adapter Card Manager
    #change
    #click element  //*[@id="CardAnchor" and .='100']
    click element  ${edit_card_data}

    user waits for the page to load
    page should contain  ${card_content}

    user waits for the page to load
