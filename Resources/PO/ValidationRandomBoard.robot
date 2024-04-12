*** Settings ***
Library             SeleniumLibrary
Library             Collections
Library             String


*** Variables ***


*** Keywords ***
Inspection Of The First Board
    ${g_elements_L1}=              Get WebElements                   //*[name()='g'][@id='Lumber']
    ${g_elements_B1}=              Get WebElements                   //*[name()='g'][@id='Brick']
    ${g_elements_W1}=              Get WebElements                   //*[name()='g'][@id='Wool']
    ${g_elements_G1}=              Get WebElements                   //*[name()='g'][@id='Grain']
    ${g_elements_O1}=              Get WebElements                   //*[name()='g'][@id='Ore']
    ${g_elements_GO1}=             Get WebElements                   //*[name()='g'][@id='Gold']

    @{transform_values_L1}         Create List
    @{transform_values_B1}         Create List
    @{transform_values_W1}         Create List
    @{transform_values_G1}         Create List
    @{transform_values_O1}         Create List
    @{transform_values_GO1}        Create List

    @{text_values_L1}              Create List
    @{text_values_B1}              Create List
    @{text_values_W1}              Create List
    @{text_values_G1}              Create List
    @{text_values_O1}              Create List
    @{text_values_GO1}             Create List

    # Inspect for Lumber location
    FOR    ${element}    IN    @{g_elements_L1}
           ${transform_value_L1}=    Get Element Attribute    ${element}    transform
           ${text_value_L1}=         Get Text                 ${element}
           Append To List            ${transform_values_L1}                 ${transform_value_L1}
           Append To List            ${text_values_L1}                      ${text_value_L1}
    END
    Log     Transform Values List: ${transform_values_L1}
    Log     Text Values List: ${text_values_L1}

    # Inspect for Brick location
    FOR    ${element}    IN    @{g_elements_B1}
           ${transform_value_B1}=    Get Element Attribute    ${element}    transform
           ${text_value_B1}=         Get Text                 ${element}
           Append To List            ${transform_values_B1}                 ${transform_value_B1}
           Append To List            ${text_values_B1}                      ${text_value_B1}
    END
    Log     Transform Values List: ${transform_values_B1}
    Log     Text Values List: ${text_values_B1}

    # Inspect for Wool location
    FOR    ${element}    IN    @{g_elements_W1}
           ${transform_value_W1}=    Get Element Attribute    ${element}    transform
           ${text_value_W1}=         Get Text                 ${element}
           Append To List            ${transform_values_W1}                 ${transform_value_W1}
           Append To List            ${text_values_W1}                      ${text_value_W1}
    END
    Log     Transform Values List: ${transform_values_W1}
    Log     Text Values List: ${text_values_W1}

    # Inspect for Grain location
    FOR    ${element}    IN    @{g_elements_G1}
           ${transform_value_G1}=    Get Element Attribute    ${element}    transform
           ${text_value_G1}=         Get Text                 ${element}
           Append To List            ${transform_values_G1}                 ${transform_value_G1}
           Append To List            ${text_values_G1}                      ${text_value_G1}
    END
    Log     Transform Values List: ${transform_values_G1}
    Log     Text Values List: ${text_values_G1}

    # Inspect for Ore location
    FOR    ${element}    IN    @{g_elements_O1}
           ${transform_value_O1}=    Get Element Attribute    ${element}    transform
           ${text_value_O1}=         Get Text                 ${element}
           Append To List            ${transform_values_O1}                 ${transform_value_O1}
           Append To List            ${text_values_O1}                      ${text_value_O1}
    END
    Log     Transform Values List: ${transform_values_O1}
    Log     Text Values List: ${text_values_O1}

    # Inspect for Gold location
    FOR    ${element}    IN    @{g_elements_GO1}
           ${transform_value_GO1}=    Get Element Attribute    ${element}    transform
           ${text_value_GO1}=         Get Text                 ${element}
           Append To List            ${transform_values_GO1}                 ${transform_value_GO1}
           Append To List            ${text_values_GO1}                      ${text_value_GO1}
    END
    Log     Transform Values List: ${transform_values_GO1}
    Log     Text Values List: ${text_values_GO1}


Inspection Of The Second Board
    ${g_elements_L2}=              Get WebElements                   //*[name()='g'][@id='Lumber']
    ${g_elements_B2}=              Get WebElements                   //*[name()='g'][@id='Brick']
    ${g_elements_W2}=              Get WebElements                   //*[name()='g'][@id='Wool']
    ${g_elements_G2}=              Get WebElements                   //*[name()='g'][@id='Grain']
    ${g_elements_O2}=              Get WebElements                   //*[name()='g'][@id='Ore']
    ${g_elements_GO2}=             Get WebElements                   //*[name()='g'][@id='Gold']

    @{transform_values_L2}         Create List
    @{transform_values_B2}         Create List
    @{transform_values_W2}         Create List
    @{transform_values_G2}         Create List
    @{transform_values_O2}         Create List
    @{transform_values_GO2}        Create List

    @{text_values_L2}              Create List
    @{text_values_B2}              Create List
    @{text_values_W2}              Create List
    @{text_values_G2}              Create List
    @{text_values_O2}              Create List
    @{text_values_GO2}             Create List

    # Inspect for Lumber location
    FOR    ${element}    IN    @{g_elements_L2}
           ${transform_value_L2}=    Get Element Attribute    ${element}    transform
           ${text_value_L2}=         Get Text                 ${element}
           Append To List            ${transform_values_L2}                 ${transform_value_L2}
           Append To List            ${text_values_L2}                      ${text_value_L2}
    END
    Log     Transform Values List: ${transform_values_L2}
    Log     Text Values List: ${text_values_L2}

    # Inspect for Brick location
    FOR    ${element}    IN    @{g_elements_B2}
           ${transform_value_B2}=    Get Element Attribute    ${element}    transform
           ${text_value_B2}=         Get Text                 ${element}
           Append To List            ${transform_values_B2}                 ${transform_value_B2}
           Append To List            ${text_values_B2}                      ${text_value_B2}
    END
    Log     Transform Values List: ${transform_values_B2}
    Log     Text Values List: ${text_values_B2}

    # Inspect for Wool location
    FOR    ${element}    IN    @{g_elements_W2}
           ${transform_value_W2}=    Get Element Attribute    ${element}    transform
           ${text_value_W2}=         Get Text                 ${element}
           Append To List            ${transform_values_W2}                 ${transform_value_W2}
           Append To List            ${text_values_W2}                      ${text_value_W2}
    END
    Log     Transform Values List: ${transform_values_W2}
    Log     Text Values List: ${text_values_W2}

    # Inspect for Grain location
    FOR    ${element}    IN    @{g_elements_G2}
           ${transform_value_G2}=    Get Element Attribute    ${element}    transform
           ${text_value_G2}=         Get Text                 ${element}
           Append To List            ${transform_values_G2}                 ${transform_value_G2}
           Append To List            ${text_values_G2}                      ${text_value_G2}
    END
    Log     Transform Values List: ${transform_values_G2}
    Log     Text Values List: ${text_values_G2}

    # Inspect for Ore location
    FOR    ${element}    IN    @{g_elements_O2}
           ${transform_value_O2}=    Get Element Attribute    ${element}    transform
           ${text_value_O2}=         Get Text                 ${element}
           Append To List            ${transform_values_O2}                 ${transform_value_O2}
           Append To List            ${text_values_O2}                      ${text_value_O2}
    END
    Log     Transform Values List: ${transform_values_O2}
    Log     Text Values List: ${text_values_O2}

    # Inspect for Gold location
    FOR    ${element}    IN    @{g_elements_GO2}
           ${transform_value_GO2}=    Get Element Attribute    ${element}    transform
           ${text_value_GO2}=         Get Text                 ${element}
           Append To List            ${transform_values_GO2}                 ${transform_value_GO2}
           Append To List            ${text_values_GO2}                      ${text_value_GO2}
    END
    Log     Transform Values List: ${transform_values_GO2}
    Log     Text Values List: ${text_values_GO2}

Validate Random Location
    ${status_lumber}       Run Keyword And Return status       Lists Should Be Equal       ${transform_values_L1}       ${transform_values_L2}
    Should Not Be True     ${status_lumber}
    ${status_brick}        Run Keyword And Return status       Lists Should Be Equal       ${transform_values_B1}       ${transform_values_B2}
    Should Not Be True     ${status_brick}
    ${status_wool}         Run Keyword And Return status       Lists Should Be Equal       ${transform_values_W1}       ${transform_values_W2}
    Should Not Be True     ${status_wool}
    ${status_grain}        Run Keyword And Return status       Lists Should Be Equal       ${transform_values_G1}       ${transform_values_G2}
    Should Not Be True     ${status_grain}
    ${status_ore}          Run Keyword And Return status       Lists Should Be Equal       ${transform_values_O1}       ${transform_values_O2}
    Should Not Be True     ${status_ore}
    ${status_gold}         Run Keyword And Return status       Lists Should Be Equal       ${transform_values_GO1}       ${transform_values_GO2}
    Should Not Be True     ${status_gold}

Validate Random Number
    ${tstatus_lumber}       Run Keyword And Return status       Lists Should Be Equal       ${text_values_L1}       ${text_values_L2}
    Should Not Be True     ${tstatus_lumber}
    ${tstatus_brick}       Run Keyword And Return status       Lists Should Be Equal       ${text_values_B1}       ${text_values_B2}
    Should Not Be True     ${tstatus_brick}
    ${tstatus_wool}       Run Keyword And Return status       Lists Should Be Equal       ${text_values_W1}       ${text_values_W2}
    Should Not Be True     ${tstatus_wool}
    ${tstatus_grain}       Run Keyword And Return status       Lists Should Be Equal       ${text_values_G1}       ${text_values_G2}
    Should Not Be True     ${tstatus_grain}
    ${tstatus_ore}       Run Keyword And Return status       Lists Should Be Equal       ${text_values_O1}       ${text_values_O2}
    Should Not Be True     ${tstatus_ore}
    ${tstatus_gold}       Run Keyword And Return status       Lists Should Be Equal       ${text_values_GO1}       ${text_values_GO2}
    Should Not Be True     ${tstatus_gold}



