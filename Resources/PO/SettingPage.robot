*** Settings ***
Library             SeleniumLibrary

*** Variables ***

*** Keywords ***
Load Setting Page
    Click Element               //img[@class='size-[5rem]']
    Page Should Contain         Settings