*** Settings ***
Resource  basePage.robot
*** Variables ***
${SIGNIN_LNK}=       xpath://button[@id='SignInButton']
${ELEMENT_THING}=    xpath://div[@class='css-1idhddb']//div[1]
${PROFILE_LINK}=     xpath://*[@id="nav"]/div[4]/a[2]

*** Keywords ***
Go To Signin Page
    Sleep    5s
    Wait Until Element Is Visible  ${ELEMENT_THING}
    Sleep    5s
    Click Element  ${ELEMENT_THING}
    Sleep    5s
    Wait Until Element Is Visible  ${SIGNIN_LNK}
    Sleep    5s
    Click Element  ${SIGNIN_LNK}
    Sleep    5s

Go To Profile
    Sleep    5s
    Wait Until Element Is Visible    ${ELEMENT_THING}
    Sleep    5s
    Click Element    ${ELEMENT_THING}
    Sleep    5s
    Wait Until Element Is Visible    ${PROFILE_LINK}
    Sleep    5s
    Click Element    ${PROFILE_LINK}
    Sleep    5s

Go To homePage
      Sleep    5s
      Click Element  xpath://img[@id='Logo']