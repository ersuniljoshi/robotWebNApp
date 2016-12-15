*** Settings ***
Library  String





*** Keywords ***
fill the text
  [Arguments]  ${login}  ${text}
  log to console  \nattempting to fill text ${login} and text ${text}

fill text with random string
  ${text} =  Generate Random String  15  [NUMBERS][LETTERS]
   #${password} =  Generate Random String  2 23
#  fill the text  login  ${text}
  [Return]  ${text}

fill the text with random number
  ${number} =  Generate Random String  5  [NUMBERS]
  [Return]  ${number}
