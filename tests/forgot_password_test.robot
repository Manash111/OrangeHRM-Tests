*** Settings ***
Library     SeleniumLibrary
Resource        ../resources/keywords.robot
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers

*** Test Cases ***
TC6 Forgot Password Functionality
    ForgotPassword    Admin
    SubmitReset
    VerifyResetPassword
