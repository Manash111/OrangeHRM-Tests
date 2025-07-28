*** Settings ***
Library    SeleniumLibrary
Resource        ../resources/keywords.robot
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers


*** Test Cases ***
TC8 - XSS Single Attempt
    [Documentation]    Verify XSS script <script>alert()</script> is sanitized
    EnterDetails    <script>alert('hello there')</script>    dummy
    SubmitLogin
    VerifyOneXSS

TC8 - XSS Attempt
    [Documentation]    Verify XSS multiple script
    [Template]  XSS Multiple Input
    <script>alert()</script>
    <img src=x onerror=alert('XSS')>
    javascript:alert('XSS')
    <svg onload=alert('XSS')>
    ';alert(String.fromCharCode(88,83,83))//


