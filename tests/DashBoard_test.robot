*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/keywords.robot
Resource    ../resources/dashboard_keywords.robot
Suite Setup     Open Browser To Login Page
Suite Teardown      Close All Browsers
*** Test Cases ***

TC-DASH-001 - Verify Dashboard Widgets
    [Tags]    High    Smoke
    EnterDetails    Admin    admin123
    SubmitLogin
    Verify Dashboard Widgets Are Visible


TC-DASH-002 - Test Quick Launch Buttons
    [Tags]    High
    @{LIST}    create list     Assign Leave    Leave List      Timesheets      Apply Leave      My Leave      My Timesheet
    FOR    ${element}    IN    @{LIST}
        Quick Launch Button    ${element}
    END

TC-DASH-003 - Dashboard Responsive Design
    [Tags]    Medium    Responsive    Dashboard
    [Documentation]    Verify dashboard layout adapts to different screen sizes without element overlap
    Desktop Test
    Tablet Test
    Mobile Test