*** Settings ***
Library                             SeleniumLibrary
Library                             Collections
Library                             String


*** Variables ***


*** Keywords ***
Recalculate Resource Distribution
    Click Element                   //h2[contains(text(),"Tiles")]/../button

Recalculate Trading Posts Distribution
    Click Element                   //h2[contains(text(),"Trading Posts")]/../button

Recalculate Numbers Distribution
    Click Element                   //h2[contains(text(),"Numbers")]/../button