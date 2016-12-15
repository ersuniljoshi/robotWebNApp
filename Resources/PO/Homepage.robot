*** Settings ***
Library  Selenium2Library
Resource  ../locator.robot

*** Keywords ***

Clicking on utility redirects to that page
    #click element  xpath=//*[@id="cboxovClose"]
#    click element  xpath=//*[@id="nav"]/li/a/img
#    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[1]/span/a
#    wait until page contains  APN ETL Management Console
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${ccg_datagrid_AFF_click_ccg}
    wait until page contains  Controller Configuration Guide
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${platform_led_click_platform_led}
    wait until page contains  Platform Port LED
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_card_from_menu}
    wait until page contains  Adapter Card Manager
    sleep  1
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_cable_from_menu}
    wait until page contains  Cable Manager
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_transceiver_from_menu}
    wait until page contains  Transceiver Manager
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_drive_from_menu}
    wait until page contains  Drive Manager
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_fru_from_menu}
    wait until page contains  Field Replaceable Units
    sleep  3
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[9]/span/a
    wait until page contains  Switch Manager
    sleep  1
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_mgmt_aggregate_from_menu}
    wait until page contains  Manage Aggregate & Volume Sizing
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[11]/span/a
    wait until page contains  Manage Data and Drive Capacity Limits
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[12]/span/a
    wait until page contains  Manage Flash Pool Limits
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[13]/span/a
    wait until page contains  VSeries Attribute Data Management
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_power_from_menu}
    wait until page contains  Power Management
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[15]/span/a
    wait until page contains  E-Series Attribute Data Management
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[16]/span/a
    wait until page contains  E-Series Performance Metrics Manager
    sleep  2
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[17]/span/a
    wait until page contains  SysConfig Tab Generator
    sleep  2
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[18]/span/a
    wait until page contains  Integrity Checks Portal
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[19]/span/a
    wait until page contains  Attachment Manager
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[20]/span/a
    wait until page contains  Data Release Level
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  ${click_alert_from_menu}
    wait until page contains  Alerts
    sleep  2
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[22]/span/a
    wait until page contains  Cloning Manager
    sleep  1
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[22]/span/a
    wait until page contains  EPIC Generic UI
    sleep  1
    click element  ${platform_led_navigate_to_led_click_menu}
    click element  xpath=//*[@id="treeMaster"]/ul/li[2]/ul/li/span/a
    wait until page contains  Metrics
    sleep  5


