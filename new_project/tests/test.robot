*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser Example
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    input Text    name=username    Admin
    input Text    name=password    admin123
    Click Button    type=submit
    Wait Until Page Contains Element    id=welcome
    ${welcome_text}=    Get Text    id=welcome
    Should Contain    ${welcome_text}    Welcome

    Close Browser

