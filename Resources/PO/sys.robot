*** Settings ***
Library  Selenium2Library

*** Keywords ***
user view alignment
    sleep  2
    click element  xpath=//*[@id="nav"]/li/a/img
    click element  xpath=//*[@id="treeMaster"]/ul/li[1]/ul/li[17]/span/a
    wait until page contains  SysConfig Tab Generator
    sleep  2
    click element  xpath=//*[@id="ddlONTAP"]/option[2]
    sleep  4
    click element  xpath=//*[@id="ddlPlatformFamily"]/option[2]
#    click element  xpath=
#    select checkbox  xpath=//*[@id="MainContent_ucPlatformFamily_ddTransceiverCheckList_0"]
    sleep  2
    click element  xpath=//*[@id="btnNext"]
    sleep  2
    select checkbox  xpath=//*[@id="MainContent_ucPlatformModel_ddTransceiverCheckList_0"]
    sleep  2
    click element  xpath=//*[@id="btnApply"]
    wait until page contains  NetApp EPIC- SysConfig Tab Generator