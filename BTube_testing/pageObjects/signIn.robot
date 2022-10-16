*** Settings ***
Resource            ../pageObjects/homePage.robot
Resource            ../pageObjects/basePage.robot
Force Tags          MyTag


*** Variables ***
${EMAIL_LOGIN_TXT}=     xpath://input[@id='SignInEmail']
${PASSWORD_LOGIN_TXT}=    xpath://input[@id='SignInPassword']
${LOGIN_BTN}=             xpath://*[@id="SignInButtonComplete"]

${emailadres}=            jolynn.cuylle@gmail.com
${password}=              P@ssW0rd01

*** Keywords ***


Log in with account
    Go To Signin Page
    Sleep  1s
    Input Text  ${EMAIL_LOGIN_TXT}  ${emailadres}
    Sleep  1s
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Sleep   1s
    Click Element   ${LOGIN_BTN}
    Sleep   1s

