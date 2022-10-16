*** Settings ***
Resource            ../pageObjects/homePage.robot
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/signIn.robot
Resource            ../pageObjects/goToProfile2.robot



Suite Setup  Open My Website
Suite Teardown  Close browser
Library    SeleniumLibrary

*** Test Cases ***

Go To Profile
    Sleep  5s