*** Settings ***
Library                             SeleniumLibrary
Library                             Collections
Library                             String


*** Variables ***


*** Keywords ***
Validate Hidden Tiles
        ${lumber_tiles_count}           Get Element Count          //*[name()='g'][@id='Lumber']
        ${brick_tiles_count}            Get Element Count          //*[name()='g'][@id='Brick']
        ${wool_tiles_count}             Get Element Count          //*[name()='g'][@id='Wool']
        ${grain_tiles_count}            Get Element Count          //*[name()='g'][@id='Grain']
        ${ore_tiles_count}              Get Element Count          //*[name()='g'][@id='Ore']
        ${gold_tiles_count}             Get Element Count          //*[name()='g'][@id='Gold']
        ${total_amount}                 Evaluate                   ${lumber_tiles_count} + ${brick_tiles_count} + ${wool_tiles_count} + ${grain_tiles_count} + ${ore_tiles_count} + ${gold_tiles_count}  

        ${black_tiles_count}            Get Element Count          //*[name()='polygon'][contains(@style,'fill: black')]
        ${black_tiles_count}            Convert To String          ${black_tiles_count}
        ${total_amount}                 Convert To String          ${total_amount}
        Run Keyword And Continue On Failure                    Should Be Equal                 ${total_amount}            ${black_tiles_count}

Validate Hidden Numbers
        ${g_elements_L1}=              Get WebElements                   //*[name()='g'][@id='Lumber']
        ${g_elements_B1}=              Get WebElements                   //*[name()='g'][@id='Brick']
        ${g_elements_W1}=              Get WebElements                   //*[name()='g'][@id='Wool']
        ${g_elements_G1}=              Get WebElements                   //*[name()='g'][@id='Grain']
        ${g_elements_O1}=              Get WebElements                   //*[name()='g'][@id='Ore']
        ${g_elements_GO1}=             Get WebElements                   //*[name()='g'][@id='Gold']

        FOR    ${element}    IN    @{g_elements_L1}
               ${text_value_L1}=         Get Text                 ${element}
               Should Be Equal           ${text_value_L1}         ?  
        END

        FOR    ${element}    IN    @{g_elements_B1}
               ${text_value_B1}=         Get Text                 ${element}
               Should Be Equal           ${text_value_B1}         ?
        END

        FOR    ${element}    IN    @{g_elements_W1}
               ${text_value_W1}=         Get Text                 ${element}
               Should Be Equal           ${text_value_W1}         ?
        END

        FOR    ${element}    IN    @{g_elements_G1}
               ${text_value_G1}=         Get Text                 ${element}
               Should Be Equal           ${text_value_G1}         ?
        END

        FOR    ${element}    IN    @{g_elements_O1}
               ${text_value_O1}=         Get Text                 ${element}
               Should Be Equal           ${text_value_O1}         ?
        END

        FOR    ${element}    IN    @{g_elements_GO1}
               ${text_value_GO1}=         Get Text                 ${element}
               Should Be Equal           ${text_value_GO1}         ?
        END