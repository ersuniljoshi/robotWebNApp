*** Settings ***
Library  Selenium2Library
Resource  ../locator.robot
Resource  random.robot
Resource  utils_overlay.robot
*** Keywords ***
user create alert button
    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_alert_from_menu}
    wait until page contains  Alerts

    user waits for the page to load
    click element  ${add_alert_button}

    user waits for the page to load
    select frame  ${iframe}

    user waits for the page to load
    ${tmp_alert_text}  fill text with random string
    input text  ${click_text_alert_name}  ${tmp_alert_text}
    click element  ${font_name_selection}
    input text  ${content_editable}  ${text_content}
    click element  ${click_start_calendar}
    click element  ${selection_date}
    click element  ${click_end_calendar}
    click element  ${selection_date_end}
    mouse down  ${transceiver_checklist}

    user waits for the page to load
    select checkbox  ${transceiver_checklist}
    click element  ${apply_button}


    user waits for the page to load
    select window  title=NetApp EPIC - Alerts

    user waits for the page to load
    page should contain element  ${add_alert_button}

   user waits for the page to load

user edit alert
    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_alert_from_menu}
    wait until page contains  Alerts

    user waits for the page to load
    click element  ${add_alert_button}

    user waits for the page to load
    select frame  ${iframe}

    user waits for the page to load
    ${tmp_alert_text_edit}  fill text with random string
    input text  ${click_text_alert_name}  ${tmp_alert_text_edit}
    click element  ${font_name_selection}
    input text  ${content_editable}  ${text_content}
    click element  ${click_start_calendar}
    click element  ${selection_date}
    click element  ${click_end_calendar}
    click element  ${selection_date_end}
    mouse down  ${transceiver_checklist}

    user waits for the page to load
    select checkbox  ${transceiver_checklist}
    click element  ${apply_button}

    user waits for the page to load
    select window  title=NetApp EPIC - Alerts

    user waits for the page to load
    user waits for the page to load
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_alert_from_menu}
    wait until page contains  Alerts

    user waits for the page to load
    #click element  ${edit_alert_data}
    click element  xpath=.//table[@id="grdAlerts"]/tbody/tr/td/b[contains(text(),'${tmp_alert_text_edit}')]/parent::td/parent::tr/td/a[.="Edit"]

    user waits for the page to load
    select frame  ${iframe}

    user waits for the page to load
    clear element text  ${content_editable}
    input text  ${content_editable}  ${new_edit_alert_text}
    mouse down  ${apply_button}

    user waits for the page to load
    click element  ${apply_button}

    user waits for the page to load
    select window  title=NetApp EPIC - Alerts

    user waits for the page to load
