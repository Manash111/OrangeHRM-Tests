*** Settings ***
Library     SeleniumLibrary
Library    XML
Variables       ../locators/Locators.py

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com
${browser}      headlesschrome

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

Verify Mobile Screen
    Set Window Size    375    667   # iphone screen
    Page Should Contain Element    ${input_username_login}
    Page Should Contain Element    ${btn_login}

Verify Tablet Screen
    Set Window Size    768    1024    # iPad size
    Page Should Contain Element    ${input_username_login}
    Page Should Contain Element    ${btn_login}


Login with SQLi
    [Arguments]     ${sqlInjection}
    Input Text    ${input_username_login}    ${sqlInjection}
    Input Text    ${input_passowrd_login}    anything
    SubmitLogin
    Page Should Contain    Invalid credentials
    # Should NOT contain: "SQL error", "syntax error", etc.


VerifyOneXSS
     # Verify NO alert pops up (use JavaScript check)
    ${alert_present}=    Run Keyword And Return Status    Alert Should Be Present
    Run Keyword If    ${alert_present}    Fail    "XSS Vulnerability: Script executed!"

    # Verify sanitized response (either error or sanitized display)
    Page Should Not Contain    <script>alert()</script>  # Script should NOT render
    Page Should Contain    Invalid credentials

XSS Multiple Input
    [Arguments]     ${xss_payload}
    EnterDetails    ${xss_payload}    dummy
    SubmitLogin

    ${alert_present}=    Run Keyword And Return Status    Alert Should Be Present
    Run Keyword If    ${alert_present}    Fail    "XSS Vulnerability: Script executed!"

    # Verify sanitized response (either error or sanitized display)
    Page Should Not Contain    ${xss_payload}     # Script should NOT render
    Page Should Contain    Invalid credentials



