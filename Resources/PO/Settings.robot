*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             SeleniumLibrary
Library             Collections
Library             String

*** Variables ***
${generation_method}                  Random
${shape}                              Hexagonal
${height}                             8
${width}                              6
${islands}                            1
${BOM}                                \ufeff
${TC1.1}                              2
${TC1.2}                              3
${TC1.3}                              4
${TC1.4}                              5
${TC1.5}                              6
${TC1.6}                              7
${TC1.7}                              8
${TC1.8}                              9
${TC1.9}                              10
${TC1.10}                             11
${TC4.1}                              12
${TC7.1}                              13        
${TC7.2}                              14
${TC7.3}                              15
${TC7.4}                              16
${TC10.1}                             17
${TC11.1}                             18
${TC12.1}                             19
${TC19.1}                             20

*** Keywords ***
Fill In Valid Settings 
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC1.1}        ${BOM}

Fill In Negative Tiles Settings
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC1.2}        ${BOM}

Fill In Negative Trading Posts Settings
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC1.3}        ${BOM}

Fill In Negative Numbers Settings
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC1.4}        ${BOM}

Fill In Special Characters Tiles Settings
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC1.5}        ${BOM}

Fill In Special Characters Trading Posts Settings
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC1.6}        ${BOM}

Fill In Special Characters Numbers Settings
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC1.7}        ${BOM}

Fill In Too Much Tiles Settings
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC1.8}        ${BOM}

Fill In Too Much Trading Posts Settings
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC1.9}        ${BOM}

Fill In Too Much Numbers Settings
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC1.10}        ${BOM}

Fill In Island Settings
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      4
    Read Input Data             InputData.csv              ${TC4.1}        ${BOM}

Fill In Settings Red Numbers Rule
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC7.1}        ${BOM}

Fill In Settings Same Numbers Rule
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC7.2}        ${BOM}

Fill In Settings Same Resources Rule
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC7.3}        ${BOM}

Fill In Settings Gold Rule
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC7.4}        ${BOM}

Fill In Tiles For Recalculation
    Read Input Data             InputData.csv              ${TC10.1}        ${BOM}

Fill In Trading Posts For Recalculation
    Read Input Data             InputData.csv              ${TC11.1}        ${BOM}

Fill In Numbers For Recalculation
    Read Input Data             InputData.csv              ${TC12.1}        ${BOM}

Fill In Settings For Trading Posts Orientation Check
    Fill In Settings            ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Read Input Data             InputData.csv              ${TC19.1}        ${BOM}





Fill In Settings
    [Arguments]                 ${generation_method}       ${shape}        ${height}        ${width}      ${islands}
    Click Element               //select[@id='GenerationMethodSelect']
    Click Element               //option[contains(text(), '${generation_method}')]
    Click Element               //select[@id='ShapeSelect']
    Click Element               //option[contains(text(), '${shape}')]
    Input Text                  id=heightInput                    ${height}
    Input Text                  id=widthInput                     ${width}
    Input Text                  id=islandCountInput               ${islands}


Read Input Data
    [Arguments]                 ${file_name}        ${TC}           ${BOM}
    ${parameters}=           Get File             ${file_name}
    @{lines}=                Split To Lines       ${parameters}                # Split file contents into lines

    
    FOR   ${row}  IN    @{lines}
        ${columns}=           Split String        ${row}      ,   
        ${element_type}=      Get From List       ${columns}      0               # Extract element type
        ${element_type}=      Replace String      ${element_type}    ${BOM}    ${EMPTY} 
        ${name}=              Get From List       ${columns}      1               # Extract tile from the first column (lumber, ..)
        ${value}=             Get From List       ${columns}      ${TC}       # Extact value from values

        IF              $element_type == 'Tile'             
                        Fill In Tiles                ${name}              ${value}
        ELSE IF         $element_type == 'Trading Post'     
                        Fill In Trading Posts        ${name}              ${value} 
        ELSE IF         $element_type == 'Number'           
                        Fill In Numbers              ${name}              ${value}  
        END
    END
            



Fill In Tiles
    [Arguments]                 ${name}                 ${value}
    IF          $name == 'Lumber'
                Input Text                  //p[text() = "Lumber"]/../div/input[1]              ${value}
                Input Text                  //p[text() = "Lumber"]/../div/input[2]              ${value}  
                Set Global Variable          ${lumber_tiles}      ${value}   
    ELSE IF     $name== 'Brick'
                Input Text                  //p[text() = "Brick"]/../div/input[1]               ${value}
                Input Text                  //p[text() = "Brick"]/../div/input[2]               ${value}  
                Set Global Variable          ${brick_tiles}       ${value} 
    ELSE IF     $name == 'Wool'
                Input Text                  //p[text() = "Wool"]/../div/input[1]                ${value}
                Input Text                  //p[text() = "Wool"]/../div/input[2]                ${value}
                Set Global Variable          ${wool_tiles}        ${value}
    ELSE IF     $name == 'Grain'
                Input Text                  //p[text() = "Grain"]/../div/input[1]               ${value}
                Input Text                  //p[text() = "Grain"]/../div/input[2]               ${value}
                Set Global Variable          ${grain_tiles}       ${value}
    ELSE IF     $name == 'Ore'
                Input Text                  //p[text() = "Ore"]/../div/input[1]                 ${value}
                Input Text                  //p[text() = "Ore"]/../div/input[2]                 ${value}
                Set Global Variable          ${ore_tiles}         ${value}
    ELSE IF     $name == 'Gold'
                Input Text                  //p[text() = "Gold"]/../div/input[1]                ${value}
                Input Text                  //p[text() = "Gold"]/../div/input[2]                ${value}
                Set Global Variable          ${gold_tiles}         ${value}
    END

Fill In Trading Posts
    [Arguments]                 ${name}                 ${value}
    IF          $name == 'Lumber 2:1'
                Input Text                  //p[text() = "Lumber 2:1"]/../div/input[1]          ${value} 
                Input Text                  //p[text() = "Lumber 2:1"]/../div/input[2]          ${value}
                Set Global Variable          ${lumber_TS}         ${value}
    ELSE IF     $name== 'Brick 2:1'
                Input Text                  //p[text() = "Brick 2:1"]/../div/input[1]           ${value}
                Input Text                  //p[text() = "Brick 2:1"]/../div/input[2]           ${value}
                Set Global Variable          ${brick_TS}         ${value}
    ELSE IF     $name == 'Wool 2:1'
                Input Text                  //p[text() = "Wool 2:1"]/../div/input[1]            ${value}
                Input Text                  //p[text() = "Wool 2:1"]/../div/input[2]            ${value}
                Set Global Variable          ${wool_TS}         ${value}
    ELSE IF     $name == 'Grain 2:1'
                Input Text                  //p[text() = "Grain 2:1"]/../div/input[1]           ${value}
                Input Text                  //p[text() = "Grain 2:1"]/../div/input[2]           ${value}
                Set Global Variable          ${grain_TS}         ${value}
    ELSE IF     $name == 'Ore 2:1'
                Input Text                  //p[text() = "Ore 2:1"]/../div/input[1]             ${value}
                Input Text                  //p[text() = "Ore 2:1"]/../div/input[2]             ${value}
                Set Global Variable          ${ore_TS}         ${value}
    ELSE IF     $name == 'Gold 3:1'
                Input Text                  //p[text() = "3:1"]/../div/input[1]                 ${value}
                Input Text                  //p[text() = "3:1"]/../div/input[2]                 ${value}
                Set Global Variable          ${gold_TS}         ${value}
    END

Fill In Numbers
    [Arguments]                 ${name}                 ${value}
    IF          $name == '2'
                Input Text                  //p[text()= "2"]/../input[1]                ${value}
                Input Text                  //p[text()= "2"]/../input[2]                ${value}
                Set Global Variable          ${2}                 ${value}
    ELSE IF     $name== '3'
                Input Text                  //p[text()= "3"]/../input[1]                ${value}
                Input Text                  //p[text()= "3"]/../input[2]                ${value}
                Set Global Variable          ${3}                 ${value}
    ELSE IF     $name == '4'
                Input Text                  //p[text()= "4"]/../input[1]                ${value}
                Input Text                  //p[text()= "4"]/../input[2]                ${value}
                Set Global Variable          ${4}                 ${value}
    ELSE IF     $name == '5'
                Input Text                  //p[text()= "5"]/../input[1]                ${value}
                Input Text                  //p[text()= "5"]/../input[2]                ${value}
                Set Global Variable          ${5}                 ${value}
    ELSE IF     $name == '6'
                Input Text                  //p[text()= "6"]/../input[1]                 ${value}
                Input Text                  //p[text()= "6"]/../input[2]                 ${value}
                Set Global Variable          ${6}                 ${value}
    ELSE IF     $name == '8'
                Input Text                  //p[text()= "8"]/../input[1]                 ${value}
                Input Text                  //p[text()= "8"]/../input[2]                 ${value}
                Set Global Variable          ${8}                 ${value}
    ELSE IF     $name == '9'
                Input Text                  //p[text()= "9"]/../input[1]                 ${value}
                Input Text                  //p[text()= "9"]/../input[2]                 ${value}
                Set Global Variable          ${9}                 ${value}
    ELSE IF     $name == '10'
                Input Text                  //p[text()= "10"]/../input[1]                ${value}
                Input Text                  //p[text()= "10"]/../input[2]                ${value}
                Set Global Variable          ${10}                 ${value}
    ELSE IF     $name == '11'
                Input Text                  //p[text()= "11"]/../input[1]                ${value}
                Input Text                  //p[text()= "11"]/../input[2]                ${value}
                Set Global Variable          ${11}                 ${value}
    ELSE IF     $name == '12'
                Input Text                  //p[text()= "12"]/../input[1]                ${value}
                Input Text                  //p[text()= "12"]/../input[2]                ${value}
                Set Global Variable          ${12}                 ${value}
    END



