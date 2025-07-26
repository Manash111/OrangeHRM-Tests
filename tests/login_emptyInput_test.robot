*** Settings ***
Library     SeleniumLibrary
Documentation       Try login with empty username or password fields and verify error
Resource    ../resources/keywords.robot

*** Test Cases ***
TC3 Empty Fields
    # Case 1: Both fields empty
    EnterDetails    ${EMPTY}    ${EMPTY}
    Wait Until Element Is Visible    xpath=//p[contains(text(),'Required')]    5s
    Page Should Contain Element    xpath=//p[contains(text(),'Required')]

    # Case 2: Username empty, password filled
    EnterDetails    ${EMPTY}    admin123
    Wait Until Element Is Visible    xpath=//p[contains(text(),'Required')]    5s
    Page Should Contain Element    xpath=//p[contains(text(),'Required')]

    # Case 3: Password empty, username filled
    EnterDetails    Admin    ${EMPTY}
    Wait Until Element Is Visible    xpath=//p[contains(text(),'Required')]    5s
    Page Should Contain Element    xpath=//p[contains(text(),'Required')]
