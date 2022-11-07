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
${SEARCHBAR}=   xpath://html/body/div/div/div[2]/header/div[2]/div/div/div/div/input
${LIST_SUGGESTION}=  xpath:/html/body/div[2]/div/ul/li
${DESIRED_MOVIE}=  Freaky

*** Test cases ***
Zoekbalk vult aan (7&10)
    Log In With Account
    Sleep  1s
    Click Element   ${SEARCHBAR}
    Input Text    ${SEARCHBAR}   freak
    Sleep  1s
    Click Element    ${LIST_SUGGESTION}
    Sleep    1s
    Page Should Contain    ${DESIRED_MOVIE}





