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


*** Test Cases ***
Check Avatar
    Log In With Account
    Wait Until Element Is Visible  ${ELEMENT_THING}
    Click Element  ${ELEMENT_THING}
    Wait Until Element Is Visible  ${PROFILE_LINK}
    Click element    ${PROFILE_LINK}
    Element Should Be Visible    xpath://img[@class='css-1wu7nrr']