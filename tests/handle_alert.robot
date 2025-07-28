*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/keywords.robot
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers

*** Variables ***
${employee_name}        Peter Anderson

*** Test Cases ***

Alerts and Popus Test
    EnterDetails    Admin    admin123
    SubmitLogin
    Click Element    ${link_admin}

    #case 1: click cancel when confirmation pops up
    Click Element    xpath://div[text()='${employee_name}']/ancestor::div[contains(@class, 'oxd-table-row')]//button[1]
    Click Element    ${btn_alert_cancel}

    #case 2: click confirm when confirmation pops up
    Click Element    xpath://div[text()='${employee_name}']/ancestor::div[contains(@class, 'oxd-table-row')]//button[1]
    Click Element    ${btn_alert_delete}
