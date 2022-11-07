*** Settings ***
Resource            ../pageObjects/homePage.robot
Resource            ../pageObjects/basePage.robot



*** Variables ***
${EMAIL_LOGIN_TXT}=     xpath://input[@id='SignInEmail']
${EMAIL_LOGIN_TXT_WRONG}=     xpath://input[@id='SignInEmail']
${PASSWORD_LOGIN_TXT}=    xpath://input[@id='SignInPassword']
${PASSWORD_LOGIN_TXT_WRONG}=    xpath://input[@id='SignInPassword']
${LOGIN_BTN}=             xpath://*[@id="SignInButtonComplete"]

${emailadres}=            jolynn.cuylle@gmail.com
${emailadresVerkeerd}=            jolynn.cuylle@grotmail.com
${password}=              P@ssW0rd01
${passwordVerkeerd}=              P@ssW0rd0000001

*** Keywords ***


Log in with account
    Go To Signin Page
    Sleep  0.5s
    Input Text  ${EMAIL_LOGIN_TXT}  ${emailadres}
    Sleep  0.5s
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Sleep   0.5s
    Click Element   ${LOGIN_BTN}
    Sleep   0.5s

