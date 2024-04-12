*** Settings ***
Library             SeleniumLibrary

*** Variables ***

*** Keywords ***
Edit Resource Of Tile
    Double Click Element        //*[name()='g'][@transform='translate(15, 17.32050807568877)']
    Page Should Contain         Edit Tile
    Click Element               //select[@id='lel']
    Click Element               //option[contains(text(), 'NotAvailable')]
    Click Element               //p[contains(text(), 'Save')]
    ${id_set}=                  Set Variable        NotAvailable

    # Validate Correct Change of Resource
    ${g_elements_RC}=              Get WebElements                   //*[name()='g'][@transform='translate(15, 17.32050807568877)']
    FOR    ${element}    IN    @{g_elements_RC}
           ${id_RC}=     Get Element Attribute    ${element}    id
           ${id_RC}=     Convert To String       ${id_RC}
           Should Be Equal As Strings    ${id_RC}    ${id_set}
    END

Edit Number Of Tile
    Double Click Element               //*[name()='g'][@transform='translate(15, 17.32050807568877)']
    Page Should Contain                Edit Tile
    Click Element                      //input[@placeholder='Number']
    Input text                         //input[@placeholder='Number']          100
    Click Element                      //p[contains(text(), 'Save')]
    Page Should Contain Element        //*[name()='text'][text()='100']

Edit Rotation Trading Post
    ${transform_TS}=                Set Variable                    ${EMPTY}
    # Get location of Trading Post
    ${g_elements_TS}=              Get WebElements                   //*[name()='g'][@id='Lumber 2:1']
    FOR    ${element}    IN    @{g_elements_TS}
           ${transform_TS}=     Get Element Attribute    ${element}    transform
           ${transform_TS}=     Convert To String        ${transform_TS}
    END
    Log                                ${transform_TS}
    Double Click Element               //*[name()='g'][@transform='${transform_TS}']
    Page Should Contain                Edit Tile
    Input Text                         //input[@placeholder='Rotation']        1000
    Click Element                      //p[contains(text(), 'Save')]
    Page Should Contain Element        //*[name()='polygon'][contains(@style,'rotate(1000deg)')]


Change Hidden Tiles
    Double Click Element               //*[name()='g'][@transform='translate(15, 17.32050807568877)']
    Page Should Contain                Edit Tile
    Click Element                      //p[contains(text(),"Tile Visible")]/../input
    Click Element                      //p[contains(text(), 'Save')]
    Page Should Contain Element        //*[name()='polygon'][contains(@style,'fill: black')]

Change Hidden Number
    Double Click Element               //*[name()='g'][@transform='translate(15, 17.32050807568877)']
    Page Should Contain                Edit Tile
    Click Element                      //p[contains(text(),"Number Visible")]/../input
    Click Element                      //p[contains(text(), 'Save')]
    Page Should Contain Element        //*[name()='text'][contains(text(),'?')]

