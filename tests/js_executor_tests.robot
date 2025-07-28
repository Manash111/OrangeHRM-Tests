*** Settings ***
Library     SeleniumLibrary
Resource     ../resources/keywords.robot
Resource    ../resources/js_keywords.robot
Variables    ../locators/locators.py
Suite Setup     Open Browser To Login Page
Suite Teardown  Close All Browsers

*** Test Cases ***
TC-JS-001 - Scroll To Element
    [Tags]    Medium    JavaScript
    EnterDetails    Admin    admin123
    SubmitLogin
    Scroll To Element With JS    ${element_footer}
    Click Element    ${element_footer_link}
