*** Settings ***
Library    SeleniumLibrary
Resource        ../resources/keywords.robot
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers


*** Test Cases ***
TC8 - XSS Attempt
    [Documentation]    Verify XSS script <script>alert()</script> is sanitized
    EnterDetails    <script>alert()</script>    dummy
    SubmitLogin
    VerifyOneXSS

