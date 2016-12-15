*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Resource  ../locator.robot
Resource  utils_overlay.robot
Resource  random.robot


*** Keywords ***
user navigate to led page

    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${platform_led_click_platform_led}
    wait until page contains  Platform Port LED
user select from dropdown

    click element  ${platform_led_dropdown_platform_model}
    user waits for the page to load

    click element  ${platform_led_dropdown_platform_config}

    user waits for the page to load
    wait until page contains  Operational Status Description

#user zooms in image
#    click image  xpath=//*[@id="LEDImage1"]
#

user must view

    click element  ${platform_led_view_led_config}

    wait until page contains  LED Configurations
    click element  ${platform_led_view_led}

    wait until page contains  LED Name
    click element  ${platform_led_view_icon}

    wait until page contains  Icon Category

user add led configurations

    click element  ${platform_led_view_led_config}

    wait until page contains  LED Configurations
    #wait until element is visible  xpath=//*[@id="btnAddLEDConfigHidden"]
    click element  ${platform_led_add_led_button}
    user waits for the page to load
    set selenium timeout  10
    wait until element is visible  ${platform_led_add_led_button}
    click element  ${click_to_fill_led_config}
    input text  ${click_to_fill_led_config}  ${text_led_config}
#    input text  ${click_to_fill_led_config}  fill text with random string

    click element  ${platform_led_button_operational_status}



    user waits for the page to load

    select frame  ${iframe}
    user waits for the page to load

    #click element  xpath=//*[@id="txtOperationalStatus"]
    input text  ${add_text_operational_status}  ${text_opeartional_status}
    input text  ${add_text_operational_description}  ${text_operational_description}

    click element  ${led_add_operational_status}
    input text  ${indicator_add_operational}  ${text_indicator}
    click element  ${indicator_add_operational}

    click button  ${apply_button_pop_up}
    user waits for the page to load

    select window  title=NetApp EPIC - LED Config Library

    #wait until page contains  shutdown

    user waits for the page to load
    click element  ${save_button_window}

    user waits for the page to load
    #wait until element is visible  xpath=//*[@id="LEDConfigurations"]
user edits led config
    sleep  5
    click element  xpath=//*[@id="LEDConfigurations"]
#    click element  xpath=//*[@id="lnkLEDConfig"]
#    wait until element is visible  xpath=//*[@id="lnkLEDConfig"]
#    click element  xpath=//*[@id="LEDConfigurations"]
#    wait until page contains  Platform Port LED Overview

#    click element  xpath=//*[@id="grdOperationalStatus"]/tbody/tr[2]/td[1]

#    click element  xpath=//*[@id="lblIndicator"]

#    input text  xpath=//*[@id="lblIndicator"]  shutdown

#    click element  xpath=//*[@id="btnSave"]
#    wait until page contains  shutdown
user add led

    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${platform_led_click_platform_led}
    wait until page contains  Platform Port LED
    click element  ${platform_led_view_led}
    wait until page contains element  ${add_led_button}
    sleep  2
    click element  ${add_led_button}
    user waits for the page to load
    user waits for the page to load
#    input text  ${click_text_led_name}  ${text_led_name}
    ${tmp_led_name}  fill text with random string
#    ${text}  Wait Until Keyword Succeeds  5 sec  fill text with random string  ${login}
    input text  ${click_text_led_name}  ${tmp_led_name}

    input text  ${click_led_display_name}  ${text_led_display_name}

    input text  ${click_led_label}  ${text_led_label}

    click element  ${click_dropdown_icon}
    click element  ${save_button_add_led}

    user waits for the page to load
    #page should contain  ${text_led_name}
user edits led

    user waits for the page to load
    user waits for the page to load
    sleep  1
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${platform_led_click_platform_led}
    wait until page contains  Platform Port LED
    sleep  2
    click element  ${platform_led_view_led}
    wait until page contains element  ${add_led_button}
    sleep  2
    click element  ${add_led_button}
    user waits for the page to load
#    input text  ${click_text_led_name}  ${text_led_name}
    ${tmp_led_name_edit}  fill text with random string
#    ${text}  Wait Until Keyword Succeeds  5 sec  fill text with random string  ${login}
    input text  ${click_text_led_name}  ${tmp_led_name_edit}

    input text  ${click_led_display_name}  ${text_led_display_name}

    input text  ${click_led_label}  ${text_led_label}

    click element  ${click_dropdown_icon}
    click element  ${save_button_add_led}

    user waits for the page to load
    #click element  ${edit_grid_led_details}
    sleep  1
    click element  xpath=//*[@class="isDirty" and .= '${tmp_led_name_edit}']
    #sleep  2
    user waits for the page to load
    sleep  1
    click element  ${click_dropdown_icon}
    click element  ${save_button_add_led}

    user waits for the page to load
    ##page should contain  Chassis Attention Front

user add icon

    user waits for the page to load
    sleep  1
    click element  ${platform_led_view_icon}
    wait until page contains element  ${add_icon_button}
    sleep  1
    click element  ${add_icon_button}
    user waits for the page to load
    click element  ${icon_category_dropdown}
    ${tmp_icon_name}  fill text with random string
    #input text  ${click_icon_type}  ${text_icon_type}
    input text  ${click_icon_type}  ${tmp_icon_name}
    click element  ${save_button_add_led}
    sleep  1
    user waits for the page to load
    wait until page contains  Icon Category


user edits icon

    user waits for the page to load
    sleep  1
    click element  ${grid_icon_details}
    wait until page contains element  ${click_text_icon_type}
    ${tmp_icon_name_edit}  fill text with random string
    #input text  ${click_text_icon_type}  ${text_icon_type}
    input text  ${click_text_icon_type}  ${tmp_icon_name_edit}
    click element  ${save_button_add_led}

    user waits for the page to load
    wait until page contains  Icon Category
user change report

    user waits for the page to load
    user waits for the page to load
    sleep  1
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${platform_led_click_platform_led}
    wait until page contains  Platform Port LED

    sleep  1
    click element  ${platform_led_dropdown_platform_model}
    click element  ${platform_led_dropdown_platform_config}

    user waits for the page to load
    click element  ${click_report_style}

    user waits for the page to load
    #wait until element is visible  xpath=//*[@id="lnkSignout"]

user edit platform led port

    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${platform_led_click_platform_led}
    wait until page contains  Platform Port LED


    click element  ${platform_led_dropdown_platform_model}
    click element  ${platform_led_dropdown_platform_config}
    click element  ${edit_led_port_report}

    user waits for the page to load
    click element  ${grid_platform_led_extended}
    click element  ${icon_type_dropdown}

    user waits for the page to load
    wait until element is visible  ${button_before_save}
    click element  ${button_before_save}

    user waits for the page to load
    set selenium timeout  10
    wait until page contains element  ${edit_led_port_report}

