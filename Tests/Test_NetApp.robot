*** Settings ***
Library  Selenium2Library
#Library  RequestLibrary
Resource  ../Resources/Common.robot
Resource  ../Resources/KeywordsFile.robot
Resource  ../Resources/locator.robot
Test Setup  Begin Test Case
Test Teardown  End Test Case

*** Variables ***

*** Test Cases ***
Test_ccg
    [Tags]  Stable
    #verify utilities
    verify ccg_datagrid_AFF

    verify data gets autofilled_AFF

    verify ccg_datagrid_FAS

    verify data gets autofilled_FAS

    verify the run report of ccg

    verify the export of ccg

Test_platformled
    [Tags]  Stable

    verify user navigate to platform led
    verify user observes selection
    ##verify user zoom image
#    verify led parts
    #  fail
    ##verify user add
    ##verify user edits led config
    verify add led
    verify user edits led
    verify user add icon
    verify user edits icon
    verify user changes report
Test_card
    [Tags]  Stable
#    #verify user edits platform led port
    verify user add card
    verify user edits card
#    verify data is properly displayed
Test_cable
    [Tags]  Stable
    verify user add cable
    verify user edit cable
    verify user must view from dropdown
Test_transceiver
    [Tags]  Stable
    verify user add transceiver
    verify user edit transceiver
    verify user view from dropdown in transceiver
Test_drive
    [Tags]  Unstable
    verify add drive button
    verify user edit drive
    verify export to excel
Test_FRU
    [Tags]  Stable
    verify user add FRU button
    verify user edit FRU
    verify FRU matrix
Test_switch
    [Tags]  Stable
    verify user add switch
    verify user edit switch module
Test_mgmtaggregate
    [Tags]  Stable
    verify mgmt aggregate
    verify export feature of mgmt aggregate
#    #verify copy from to feature
Test_power
    [Tags]  Stable
    verify export of power mgmt
    verify filter of power magmt
#
#
#    # next button does not appears all the time
#    #unstabled
#    ##verify user add new configuration functionality
#
#    verify user edit configuration name
#    verify show all functionality
#Test_sysconfig
#    [Tags]  Unstabled
#    verify alignment
Test_alert
    [Tags]  Stable
    verify user create alert button
    verify edit of alert




