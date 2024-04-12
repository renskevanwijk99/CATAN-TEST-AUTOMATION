*** Settings ***
Library                             SeleniumLibrary
Library                             Collections
Library                             String


*** Variables ***


*** Keywords ***
Validate Correct Resources Trading Posts Numbers
        # RESOURCE TILES
        ${lumber_tiles_count}           Get Element Count        //*[name()='g'][@id='Lumber']
        ${lumber_tiles_count}           Convert To String        ${lumber_tiles_count}
        Should Be Equal                 ${lumber_tiles_count}    ${lumber_tiles}

        ${brick_tiles_count}            Get Element Count        //*[name()='g'][@id='Brick']
        ${brick_tiles_count}            Convert To String        ${brick_tiles_count}
        Should Be Equal                 ${brick_tiles_count}     ${brick_tiles}

        ${wool_tiles_count}             Get Element Count         //*[name()='g'][@id='Wool']
        ${wool_tiles_count}             Convert To String         ${wool_tiles_count}
        Should Be Equal                 ${wool_tiles_count}       ${wool_tiles}

        ${grain_tiles_count}            Get Element Count         //*[name()='g'][@id='Grain']
        ${grain_tiles_count}            Convert To String         ${grain_tiles_count}
        Should Be Equal                 ${grain_tiles_count}      ${grain_tiles}

        ${ore_tiles_count}              Get Element Count         //*[name()='g'][@id='Ore']
        ${ore_tiles_count}              Convert To String         ${ore_tiles_count}
        Should Be Equal                 ${ore_tiles_count}        ${ore_tiles}

        ${gold_tiles_count}             Get Element Count         //*[name()='g'][@id='Gold']
        ${gold_tiles_count}             Convert To String         ${gold_tiles_count}
        Should Be Equal                 ${gold_tiles_count}       ${gold_tiles}

        # TRADING POSTS
        ${lumber_TS_count}              Get Element Count         //*[name()='g'][@id='Lumber 2:1']
        ${lumber_TS_count}              Convert To String         ${lumber_TS_count}
        Should Be Equal                 ${lumber_TS_count}        ${lumber_TS}

        ${brick_TS_count}               Get Element Count         //*[name()='g'][@id='Brick 2:1']
        ${brick_TS_count}               Convert To String         ${brick_TS_count}
        Should Be Equal                 ${brick_TS_count}         ${brick_TS}

        ${wool_TS_count}                Get Element Count         //*[name()='g'][@id='Wool 2:1']
        ${wool_TS_count}                Convert To String         ${wool_TS_count}
        Should Be Equal                 ${wool_TS_count}          ${wool_TS}

        ${grain_TS_count}               Get Element Count         //*[name()='g'][@id='Grain 2:1']
        ${grain_TS_count}               Convert To String         ${grain_TS_count}
        Should Be Equal                 ${grain_TS_count}         ${grain_TS}

        ${ore_TS_count}                 Get Element Count         //*[name()='g'][@id='Ore 2:1']
        ${ore_TS_count}                 Convert To String         ${ore_TS_count}
        Should Be Equal                 ${ore_TS_count}           ${ore_TS}

        ${gold_TS_count}                Get Element Count         //*[name()='g'][@id='3:1']
        ${gold_TS_count}                Convert To String         ${gold_TS_count}
        Should Be Equal                 ${gold_TS_count}          ${gold_TS}

        # NUMBERS
        ${2_count}                      Get Element Count         //*[name()='text'][text()='2']
        ${2_count}                      Convert To String         ${2_count}
        Should Be Equal                 ${2_count}                ${2}

        ${3_count}                      Get Element Count         //*[name()='text'][text()='3']
        ${3_count}                      Convert To String         ${3_count}
        Should Be Equal                 ${3_count}                ${3}

        ${4_count}                      Get Element Count         //*[name()='text'][text()='4']
        ${4_count}                      Convert To String         ${4_count}
        Should Be Equal                 ${4_count}                ${4}

        ${5_count}                      Get Element Count         //*[name()='text'][text()='5']
        ${5_count}                      Convert To String         ${5_count}
        Should Be Equal                 ${5_count}                ${5}

        ${6_count}                      Get Element Count         //*[name()='text'][text()='6']
        ${6_count}                      Convert To String         ${6_count}
        Should Be Equal                 ${6_count}                ${6}

        ${8_count}                      Get Element Count         //*[name()='text'][text()='8']
        ${8_count}                      Convert To String         ${8_count}
        Should Be Equal                 ${8_count}                ${8}

        ${9_count}                      Get Element Count         //*[name()='text'][text()='9']
        ${9_count}                      Convert To String         ${9_count}
        Should Be Equal                 ${9_count}                ${9}

        ${10_count}                     Get Element Count         //*[name()='text'][text()='10']
        ${10_count}                     Convert To String         ${10_count}
        Should Be Equal                 ${10_count}               ${10}

        ${11_count}                     Get Element Count         //*[name()='text'][text()='11']
        ${11_count}                     Convert To String         ${11_count}
        Should Be Equal                 ${11_count}               ${11}

        ${12_count}                     Get Element Count         //*[name()='text'][text()='12']
        ${12_count}                     Convert To String         ${12_count}
        Should Be Equal                 ${12_count}               ${12}






