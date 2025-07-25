*** Settings ***
Library    SeleniumLibrary
Resource        ../resources/keywords.robot
Suite Setup    Open Browser To Login Page
Suite Teardown    Close All Browsers

*** Test Cases ***
Invalid Login Test
    EnterDetails    admin    Admin123
    SubmitLogin
    Wait Until Page Contains    Invalid credentials
    Capture Page Screenshot

