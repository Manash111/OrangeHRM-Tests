*** Settings ***
Library     SeleniumLibrary
Library    XML
Variables       ../locators/Locators.py

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com
${browser}      Chrome

*** Keywords ***

Open Browser To Login Page
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10seconds

EnterDetails
    [Arguments]     ${username}     ${password}
    Input Text    ${input_username_login}    ${username}
    Input Text    ${input_passowrd_login}    ${password}

SubmitLogin
    Click Element    ${btn_login}

ClearElements
    Execute JavaScript    document.querySelector('[name="username"]').value = "";
    Execute JavaScript    document.querySelector('[name="password"]').value = "";

ReloadCurrentPage
    Go To    ${url}

LogOut
    Click Element   ${dropdown_logout}
    Wait Until Element Is Visible    ${btn_logout}    5s
    Click Element   ${btn_logout}


VerifyLogoutMessage
    Wait Until Page Contains Element    ${element_loginForm}    10s
    Page Should Contain    Login

ForgotPassword
    [Arguments]     ${username}
    Click Element    ${link_forgotPassword}
    Wait Until Page Contains    Reset Password
    Input Text    ${input_username_forgotPassword}    ${username}

SubmitReset
    Click Element    ${btn_reset}

VerifyResetPassword
    Page Should Contain    ${forgotPasswordMessage}