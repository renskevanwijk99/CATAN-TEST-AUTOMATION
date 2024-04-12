*** Settings ***
Library                             SeleniumLibrary


*** Variables ***


*** Keywords ***
Drag And Drop The Board
    ${source}=          Get WebElement    xpath=//*[name()='g'][@transform='translate(15, 17.32050807568877)']
    ${target}=          Get WebElement    xpath=//*[name()='g'][@transform='translate(30, 17.32050807568877)']
    Drag And Drop       ${source}         ${target}
    Drag And Drop       ${target}         ${source}
