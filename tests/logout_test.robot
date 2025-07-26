*** Settings ***
Library     SeleniumLibrary
Resource        ../resources/keywords.robot
Documentation     Login with valid credentials then logout and verify redirection to login page
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers


*** Test Cases ***
TC4 Logout
    [Documentation]    Login with valid credentials then logout and verify redirection to login page
    EnterDetails    Admin    admin123
    SubmitLogin
    Wait Until Page Contains    Dashboard    10s
    LogOut
    VerifyLogoutMessage

