*** Settings ***
Documentation  This is a basic info
Library  Selenium2Library
Resource  ./PO/Homepage.robot
Resource  ./PO/utilities.robot
Resource  ./PO/platformled.robot
Resource  ./PO/card.robot
Resource  ./PO/cable.robot
Resource  ./PO/transceiver.robot
Resource  ./PO/drive.robot
Resource  ./PO/FRU.robot
Resource  ./PO/switch.robot
Resource  ./PO/mgmt_aggregate.robot
Resource  ./PO/power.robot
Resource  ./PO/sys.robot
Resource  ./PO/alert.robot

*** Keywords ***
verify utilities
    Homepage.Clicking on utility redirects to that page

verify ccg_datagrid_AFF
    utilities.ccg_datagrid_AFF

verify data gets autofilled_AFF
    utilities.data gets autofilled_AFF

verify ccg_datagrid_FAS
    utilities.ccg_datagrid_FAS

verify data gets autofilled_FAS
    utilities.data gets autofilled_FAS

verify the run report of ccg
    utilities.verify ccg run report
verify the export of ccg
    utilities.verify ccg export

verify user navigate to platform led
    platformled.user navigate to led page
verify user observes selection
    platformled.user select from dropdown
#verify user zoom image
#    platformled.user zooms in image
verify led parts
    platformled.user must view
verify user add
    platformled.user add led configurations
verify user edits led config
    platformled.user edits led config
verify add led
    platformled.user add led
verify user edits led
    platformled.user edits led
verify user add icon
    platformled.user add icon
verify user edits icon
    platformled.user edits icon
verify user changes report
    platformled.user change report
verify user edits platform led port
    platformled.user edit platform led port
verify user add card
    card.user add card
verify user edits card
    card.user edit card
verify data is properly displayed
    card.data properly displayed
verify user add cable
    cable.user add cable
verify user edit cable
    cable.user edit cable
verify user must view from dropdown
    cable.user must view from dropdown
verify user add transceiver
    transceiver.user add transceiver
verify user edit transceiver
    transceiver.user edit transceiver
verify user view from dropdown in transceiver
    transceiver.user must view from drpdown
verify add drive button
    drive.user add drive
verify user edit drive
    drive.user edit drive
verify export to excel
    drive.export to excel feature
verify user add FRU button
    FRU.user add FRU button
verify user edit FRU
    FRU.user edit FRU
verify FRU matrix
    FRU.FRU matrix
verify user add switch
    switch.user add switch
verify user edit switch module
    switch.user edit switch module
verify mgmt aggregate
    mgmt_aggregate.user add value to platform value
verify export feature of mgmt aggregate
    mgmt_aggregate.user view export feature
#verify copy from to feature
#    mgmt_aggregate.user view copy from to feature
verify export of power mgmt
    power.user view export feature
verify filter of power magmt
    power.verify filter
verify user add new configuration functionality
    power.user add new configuration functionality
verify user edit configuration name
    power.user edit configuration name
verify show all functionality
    power.user should view button functionality
verify alignment
    sys.user view alignment
verify user create alert button
    alert.user create alert button
verify edit of alert
    alert.user edit alert
