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


*** Test cases ***
Aantal credits juist van account
     Log in with account
     Wait Until Element Is Visible  ${ELEMENT_THING}
     Click Element  ${ELEMENT_THING}
     Wait Until Element Is Visible  ${PROFILE_LINK}
     Click element    ${PROFILE_LINK}
     ${CREDIT}=  Get Value    css:p:nth-child(6)
     ${CREDIT}=     Convert To Integer    ${CREDIT}
     Go To homePage
     Sleep  5s
     Click Element    xpath:///div[@id='Action Movies']//img[@id='735110']
     Sleep  2s
     Click Element    xpath://button[@id='RentMovieButton']
     Sleep  2s
     Click Button    xpath:/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/div[2]/button[1]
     Sleep  2s
     Wait Until Element Is Visible  ${ELEMENT_THING}
     Click Element  ${ELEMENT_THING}
     Wait Until Element Is Visible  ${PROFILE_LINK}
     Click element    ${PROFILE_LINK}
     ${CREDIT_new}=  Get Text    css:p:nth-child(6)
     ${CREDIT_new}=     Convert To Integer    ${CREDIT_new}
     Should Not Be Equal    ${CREDIT}  ${CREDIT_new}


