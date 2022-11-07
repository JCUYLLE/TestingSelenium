*** Settings ***
Resource            ../pageObjects/homePage.robot
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/signIn.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Library    SeleniumLibrary

*** Variables ***
${MYMOVIES}=    //a[@href='#/orders']//button[@id='OrdersPageButton']
${ELEMENT_THING}=    xpath://div[@class='css-1idhddb']//div[1]


*** Test cases ***
Gehuurde film my movies (3)
    Log in with account
    Sleep  2s
    Click Element    xpath://div[@id='Action Movies']//img[@id='624779']
    Sleep  2s
    Click Element    xpath://button[@id='RentMovieButton']
    Sleep  2s
    Click Button    xpath:/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/div[2]/button[1]
    Sleep  2s
    Wait Until Element Is Visible  ${ELEMENT_THING}
    Sleep    2s
    Click Element  ${ELEMENT_THING}
    Sleep  2s
    Wait Until Element Is Visible  ${MYMOVIES}
    Click element    ${MYMOVIES}
    Sleep  2s
    Page Should Contain    VFW


