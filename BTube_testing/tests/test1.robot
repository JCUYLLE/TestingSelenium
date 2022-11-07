*** Settings ***
Resource            ../pageObjects/homePage.robot
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/signIn.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Library    SeleniumLibrary

*** Variables ***
${first_name_element}=          xpath://*[@id="SignIn"]/div[3]/div/p[2]
${last_name_element}=           xpath://*[@id="SignIn"]/div[3]/p[2]
${EMAIL_LOGIN_TXT_WRONG}=     xpath://input[@id='SignInEmail']
${PASSWORD_LOGIN_TXT_WRONG}=    xpath://input[@id='SignInPassword']

${name} =  Jolynn
${lastname} =           Cuylle
${passwordVerkeerd}=              P@ssW0rd0000001
${emailadresVerkeerd}=            jolynn.cuylle@grotmail.com
*** Test Cases ***

Login foute username (8)
    Go To Signin Page
    Sleep  0.5s
    Input Text  ${EMAIL_LOGIN_TXT_WRONG}  ${emailadresVerkeerd}
    Sleep  0.5s
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Sleep   0.5s
    Click Element   ${LOGIN_BTN}
    Sleep   0.5s
    Page Should Contain    This email has not been registered.

Login fout passwoord (9)
        Go To Signin Page
        Sleep  0.5s
        Input Text  ${EMAIL_LOGIN_TXT}  ${emailadres}
        Sleep  0.5s
        Input Text  ${PASSWORD_LOGIN_TXT}  ${passwordVerkeerd}
        Sleep   0.5s
        Click Element   ${LOGIN_BTN}
        Sleep   0.5s
        Page Should Contain    Email or password incorrect.


Log In With Account (2)
    Go To Signin Page
    Log In With Account



Login naam correct
    Go To Profile
    Element Should Contain    locator=${first_name_element}    expected=${name}
    Element Should Contain    locator=${last_name_element}    expected=${lastname}
    Location Should Be    https://brightshopapp.herokuapp.com/#/




