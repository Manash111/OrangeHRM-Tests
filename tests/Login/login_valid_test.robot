*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot
Suite Setup    Open Browser To Login Page
Suite Teardown    Close All Browsers


*** Test Cases ***
Valid Login Test
   EnterDetails    Admin    admin123
   SubmitLogin
   Capture Page Screenshot
   Wait Until Element Is Visible    xpath://p[@class='oxd-userdropdown-name']
   Capture Page Screenshot

