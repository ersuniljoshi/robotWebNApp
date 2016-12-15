*** Settings ***
Library  Selenium2Library

*** Keywords ***
user create access group
    click button  xpath=//*[@id="btnCreateNewButton"]
    sleep  3
    input text  xpath=//*[@id="txtGroupName"]  txt1
    sleep  2
    click element  xpath=//*[@id="MainContent_lnkAddGroupMemberRow"]
    sleep  2
    input text  xpath=//*[@id="MainContent_grdGroupMemberDetails_txtEmployeeName_0"]  anujita
    sleep  3
    click element  xpath=//*[@id="MainContent_grdGroupMemberDetails_txtRoleType_0"]
    sleep  2
    select checkbox  xpath=//*[@id="MainContent_grdGroupMemberDetails_ddlRoleType_0_1_0"]
    sleep  3
    click element  xpath=//*[@id="MainContent_ddlUnAssignedParentTable"]/option[2]
    sleep  3
    click button  xpath=//*[@id="btnSaveDetails"]



