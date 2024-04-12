*** Settings ***
Library             SeleniumLibrary
Library             String


*** Variables ***


*** Keywords ***
Refresh Page
    Reload Page

Verify Same Board
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

    ${g_elements_RL1}=              Get WebElements                   //*[name()='g'][@id='Lumber']
    ${g_elements_RB1}=              Get WebElements                   //*[name()='g'][@id='Brick']
    ${g_elements_RW1}=              Get WebElements                   //*[name()='g'][@id='Wool']
    ${g_elements_RG1}=              Get WebElements                   //*[name()='g'][@id='Grain']
    ${g_elements_RO1}=              Get WebElements                   //*[name()='g'][@id='Ore']
    ${g_elements_RGO1}=             Get WebElements                   //*[name()='g'][@id='Gold']

    @{transform_values_RL1}         Create List
    @{transform_values_RB1}         Create List
    @{transform_values_RW1}         Create List
    @{transform_values_RG1}         Create List
    @{transform_values_RO1}         Create List
    @{transform_values_RGO1}        Create List

    @{text_values_RL1}              Create List
    @{text_values_RB1}              Create List
    @{text_values_RW1}              Create List
    @{text_values_RG1}              Create List
    @{text_values_RO1}              Create List
    @{text_values_RGO1}             Create List

    # Inspect for Lumber location and number
    FOR    ${element}    IN    @{g_elements_RL1}
           ${transform_value_RL1}=    Get Element Attribute    ${element}    transform
           ${text_value_RL1}=         Get Text                 ${element}
           Append To List            ${transform_values_RL1}                 ${transform_value_RL1}
           Append To List            ${text_values_RL1}                      ${text_value_RL1}
    END
    Lists Should Be Equal     ${transform_values_RL1}    ${transform_values_L1}    
    Lists Should Be Equal     ${text_values_RL1}         ${text_values_L1}        

    # Inspect for Brick location and number
    FOR    ${element}    IN    @{g_elements_RB1}
           ${transform_value_RB1}=    Get Element Attribute    ${element}    transform
           ${text_value_RB1}=         Get Text                 ${element}
           Append To List            ${transform_values_RB1}                 ${transform_value_RB1}
           Append To List            ${text_values_RB1}                      ${text_value_RB1}
    END
    Lists Should Be Equal     ${transform_values_RB1}    ${transform_values_B1}    
    Lists Should Be Equal     ${text_values_RB1}         ${text_values_B1}  

    # Inspect for Wool location and number
    FOR    ${element}    IN    @{g_elements_RW1}
           ${transform_value_RW1}=    Get Element Attribute    ${element}    transform
           ${text_value_RW1}=         Get Text                 ${element}
           Append To List            ${transform_values_RW1}                 ${transform_value_RW1}
           Append To List            ${text_values_RW1}                      ${text_value_RW1}
    END
    Lists Should Be Equal     ${transform_values_RW1}    ${transform_values_W1}    
    Lists Should Be Equal     ${text_values_RW1}         ${text_values_W1}

    # Inspect for Grain location and number
    FOR    ${element}    IN    @{g_elements_RG1}
           ${transform_value_RG1}=    Get Element Attribute    ${element}    transform
           ${text_value_RG1}=         Get Text                 ${element}
           Append To List            ${transform_values_RG1}                 ${transform_value_RG1}
           Append To List            ${text_values_RG1}                      ${text_value_RG1}
    END
    Lists Should Be Equal     ${transform_values_RG1}    ${transform_values_G1}    
    Lists Should Be Equal     ${text_values_RG1}         ${text_values_G1}

    # Inspect for Ore location and number
    FOR    ${element}    IN    @{g_elements_RO1}
           ${transform_value_RO1}=    Get Element Attribute    ${element}    transform
           ${text_value_RO1}=         Get Text                 ${element}
           Append To List            ${transform_values_RO1}                 ${transform_value_RO1}
           Append To List            ${text_values_RO1}                      ${text_value_RO1}
    END
    Lists Should Be Equal     ${transform_values_RO1}    ${transform_values_O1}    
    Lists Should Be Equal     ${text_values_RO1}         ${text_values_O1}

    # Inspect for Gold location and number
    FOR    ${element}    IN    @{g_elements_RGO1}
           ${transform_value_RGO1}=    Get Element Attribute    ${element}    transform
           ${text_value_RGO1}=         Get Text                 ${element}
           Append To List            ${transform_values_RGO1}                 ${transform_value_RGO1}
           Append To List            ${text_values_RGO1}                      ${text_value_RGO1}
    END
    Lists Should Be Equal     ${transform_values_RGO1}    ${transform_values_RGO1}    
    Lists Should Be Equal     ${text_values_RGO1}         ${text_values_RGO1}

