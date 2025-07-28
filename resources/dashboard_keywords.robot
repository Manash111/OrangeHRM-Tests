*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/locators.py

*** Variables ***

${DESKTOP_WIDTH}    1920
${DESKTOP_HEIGHT}   1080
${TABLET_WIDTH}     768
${TABLET_HEIGHT}    1024
${MOBILE_WIDTH}     375
${MOBILE_HEIGHT}    667

*** Keywords ***
Verify Dashboard Widgets Are Visible
    Wait Until Element Is Visible    ${DASHBOARD_HEADER}
    Element Should Be Visible    ${dashboard_WIDGET}

Quick Launch Button
    [Arguments]    ${button_name}
    Click Element    xpath://button[@title='${button_name}']
    Page Should Contain    ${button_name}
    Go Back

Desktop Test
    # Test desktop size
    Set Window Size    ${DESKTOP_WIDTH}    ${DESKTOP_HEIGHT}
    Verify Dashboard Widgets Are Visible
    Capture Page Screenshot    desktop_view.png

Tablet Test
    # Test tablet size
    Set Window Size    ${TABLET_WIDTH}    ${TABLET_HEIGHT}
    Verify Dashboard Widgets Are Visible
    Capture Page Screenshot    tablet_view.png

Mobile Test
    # Test mobile size
    Set Window Size    ${MOBILE_WIDTH}    ${MOBILE_HEIGHT}
    Verify Dashboard Widgets Are Visible
    Capture Page Screenshot    mobile_view.png


#Verify Dashboard Layout
#    [Arguments]    ${screen_size}
#    # Check critical widgets are visible and not overlapping
#    Element Should Be Visible    ${DASHBOARD_HEADER}
#    Element Should Be Visible    ${dashboard_WIDGET]
#
#    # Advanced: Check element positions don't overlap (using JavaScript)
#    ${no_overlap}=    Execute JavaScript    return window.checkElementsOverlap(
#        "${DASHBOARD_HEADER}",
#        "${dashboard_WIDGET}");
#    Should Be True    ${no_overlap}    msg=Elements overlap on ${screen_size[0]}x${screen_size[1]} resolution
