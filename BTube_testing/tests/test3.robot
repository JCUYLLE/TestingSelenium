*** Settings ***
Resource            ../pageObjects/homePage.robot
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/signIn.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Library    SeleniumLibrary

*** Variables ***
${ELEMENT_THING}=    xpath://div[@class='css-1idhddb']//div[1]
${PROFILE_LINK}=     xpath://*[@id="nav"]/div[4]/a[2]
${CREDIT}=          xpath://input[@placeholder='5']
${neg_credit}=  -10

*** Test cases ***
Check Avatar (6)
    Log In With Account
    Wait Until Element Is Visible  ${ELEMENT_THING}
    Click Element  ${ELEMENT_THING}
    Wait Until Element Is Visible  ${PROFILE_LINK}
    Click element    ${PROFILE_LINK}
    Element Should Be Visible    xpath://img[@class='css-1wu7nrr']

Geen negatieve credits toestaan (5)
    Log in with account
    Sleep  2s
    Wait Until Element Is Visible  ${ELEMENT_THING}
    Click Element  ${ELEMENT_THING}
    Wait Until Element Is Visible  ${PROFILE_LINK}
    Click element    ${PROFILE_LINK}
    Click Element    xpath://button[@class='css-1e9674f']
    Sleep  5s
    Input Text    ${CREDIT}     ${neg_credit}
    Click Element    xpath://button[@type='submit']

Aantal credits juist van account (4)
     Log in with account
     Wait Until Element Is Visible  ${ELEMENT_THING}
     Click Element  ${ELEMENT_THING}
     Wait Until Element Is Visible  ${PROFILE_LINK}
     Click element    ${PROFILE_LINK}
     Sleep    5s
     ${CREDIT}=  Get Text    xpath://*[@id="SignIn"]/div[3]/p[6]
     ${CREDIT}=     Convert To Integer    ${CREDIT}
     Go To homePage
     Sleep  5s
     Click Element    xpath://div[@id='Romance Movies']//img[@id='643882']
     Sleep  2s
     Click Element    xpath://button[@id='RentMovieButton']
     Sleep  2s
     Wait Until Element Is Visible  ${ELEMENT_THING}
     Click Element  ${ELEMENT_THING}
     Wait Until Element Is Visible  ${PROFILE_LINK}
     Click element    ${PROFILE_LINK}
     Sleep  5s
     ${CREDIT_new}=  Get Text    xpath://*[@id="SignIn"]/div[3]/p[6]
     ${CREDIT_new}=     Convert To Integer    ${CREDIT_new}
     Should Not Be Equal    ${CREDIT}  ${CREDIT_new}


