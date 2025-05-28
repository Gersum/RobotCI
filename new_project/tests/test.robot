*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser Example
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome

    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input
    input Text      xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    sleep   2s
    input Password  xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
    sleep   2s
    Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Wait Until Page Contains  Dashboard     
    
    Close Browser

