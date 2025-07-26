*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/keywords.robot
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers


*** Test Cases ***
TC5 UI Elements Visibility
    [Documentation]    Check username, password input fields and login button visibility on login page
    Wait Until Page Contains    Login
    Element Should Be Visible    ${input_username_login}
    Element Should Be Enabled    ${input_username_login}

    Element Should Be Visible    ${input_passowrd_login}
    Element Should Be Enabled    ${input_passowrd_login}

    Element Should Be Visible    ${btn_login}
    Element Should Be Enabled    ${btn_login}
