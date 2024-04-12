*** Settings ***
Library                             SeleniumLibrary
Library                             Collections
Library                             String


*** Variables ***


*** Keywords ***
Validate Recalculation Resources
        ${lumber_tiles_count}           Get Element Count          //*[name()='g'][@id='Lumber']
        ${total_amount}                 Set Variable               19

        ${lumber_tiles_count}           Convert To String          ${lumber_tiles_count}
        ${total_amount}                 Convert To String          ${total_amount}
        Run Keyword And Continue On Failure                    Should Be Equal                 ${total_amount}            ${lumber_tiles_count}

Validate Recalculation Trading Posts
        ${TS_count}           Get Element Count          //*[name()='g'][@id='3:1']
        ${total_amount}                 Set Variable               9

        ${TS_count}                     Convert To String          ${TS_count}
        ${total_amount}                 Convert To String          ${total_amount}
        Run Keyword And Continue On Failure                    Should Be Equal                 ${total_amount}            ${TS_count}

Validate Recalculation Numbers
        ${numbers_count}           Get Element Count          //*[name()='text'][text()='10']
        ${total_amount}                 Set Variable               19

        ${numbers_count}                Convert To String          ${numbers_count}
        ${total_amount}                 Convert To String          ${total_amount}
        Run Keyword And Continue On Failure                    Should Be Equal                 ${total_amount}            ${numbers_count}