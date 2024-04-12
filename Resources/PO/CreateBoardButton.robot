*** Settings ***
Library             SeleniumLibrary

*** Variables ***

*** Keywords ***
Create Board Using Create Board Button
    Click Element               //p[contains(text(), 'Create Board')]


Error Found
    ${alert_message}=    Run Keyword And Continue On Failure       Handle Alert
    Log                  ${alert_message}
    

