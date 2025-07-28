*** Settings ***
Library     SeleniumLibrary
Documentation       Try login with empty username or password fields and verify error
Resource    ../resources/keywords.robot
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers
Test Setup          ReloadCurrentPage
*** Test Cases ***
TC3BothEmpty
    # Case 1: Both fields empty
    EnterDetails    ${EMPTY}    ${EMPTY}
    SubmitLogin
    Wait Until Page Contains    Required    5s
    Page Should Contain    Required

TC3PasswordEmpty
    # Case 2: Username filled, Password empty
    EnterDetails    Admin    ${EMPTY}
    SubmitLogin
    Wait Until Page Contains    Required    5s
    Page Should Contain    Required

TC3UserEmpty
    # Case 3: Username empty, Password filled
    EnterDetails    ${EMPTY}    admin123
    SubmitLogin
    Wait Until Page Contains    Required    5s
    Page Should Contain    Required