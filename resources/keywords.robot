*** Settings ***
Library     SeleniumLibrary
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