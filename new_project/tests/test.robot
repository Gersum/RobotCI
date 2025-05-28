*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser Example
    Open Browser    https://robotframework.org    chrome
    Close Browser

