*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/keywords.robot
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers


*** Test Cases ***
TC8 Verify UI on Mobile Screen
    Verify Mobile Screen
    Close All Browsers

TC8 Verify UI on Tablet Screen
    Open Browser To Login Page
    Verify Tablet Screen
