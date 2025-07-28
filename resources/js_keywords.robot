*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Keywords ***
Scroll To Element With JS
    [Arguments]    ${locator}
#    Scroll Element Into View    xpath://h2[normalize-space()='Pagination Web Table']
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    Wait Until Element Is Visible    ${locator}

