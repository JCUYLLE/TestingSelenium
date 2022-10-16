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

${name} =  Jolynn
${lastname} =           Cuylle
*** Test Cases ***


Log In With Account
    Go To Signin Page
    Log In With Account
    Location Should Be    https://brightshopapp.herokuapp.com/#/

Login naam correct
    Go To Profile
    Element Should Contain    locator=${first_name_element}    expected=${name}
    Element Should Contain    locator=${last_name_element}    expected=${lastname}



