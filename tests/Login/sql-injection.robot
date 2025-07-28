*** Settings ***
Library     SeleniumLibrary
Resource        ../resources/keywords.robot
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers

*** Test Cases ***
Verify SQL Injection
    [Template]    Login with SQLi
    admin'--         #Should fail
    ' OR 1=1--      # WHERE username = '' OR 1=1--' AND password = '123';
