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
Geen negatieve credits toestaan
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

