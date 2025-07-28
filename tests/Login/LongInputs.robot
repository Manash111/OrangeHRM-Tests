*** Settings ***
Library     SeleniumLibrary
Resource        ../resources/keywords.robot
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers
*** Test Cases ***
Login With Long Username
    ${300_char_input}=    Evaluate    "x" * 300
    EnterDetails    ${300_char_input}    dummy
    SubmitLogin
    Page Should Contain    Invalid credentials