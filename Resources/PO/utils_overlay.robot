*** Settings ***
Library  Selenium2Library
Library  String

*** Variables ***
${counter}  99999999999
*** Keywords ***
user waits for the page to load
    : FOR  ${INDEX}  IN  RANGE  -99999999999  99999999999
     \  ${IsAjaxComplete}  Execute JavaScript  return window.jQuery!=undefined && jQuery.active==0 && jQuery('.blockOverlay').length==0
     \  Log  ${INDEX}
     \  Log  ${IsAjaxComplete}
     \  sleep  1
     \  Run Keyword If  ${IsAjaxComplete}==True  Exit For Loop



#user waits for the page to load
#    : FOR  ${INDEX}  IN  RANGE  1  5000
#     \  ${value}  Get Element Attribute  xpath=//div[@id='modal']@style
##     \  Log  ${INDEX}
##     \  Log  ${IsAjaxComplete}
#     \  log to console  ${value}
##     \  ${value}  Convert To String   ${value}
##     \  Run Keyword If  '${value}'  Should Contain  none  Exit For Loop
#    \  exit for loop if  '${value}'=='display: none;'

