*** Settings ***
Documentation                       These test suites test the Catan Board Generator: board generation, handling invalid input, handling special rules and user interface 
Resource                            ../Resources/Common.robot
Resource                            ../Resources/CreateARandomBoard.robot
Test Setup                          Begin Web Test
Test Teardown                       End Web Test

# Run the script: 
# robot -d results tests/CreateBoard.robot 

*** Variables ***

*** Test Cases ***
Fill In Valid Settings And Create A Random Board 
    [Documentation]                 The user should be able to create a random board giving valid input settings.
    [Tags]                          Random Board Generation
    CreateARandomBoard.Fill Valid Settings In Setting Widget And Create Board
    CreateARandomBoard.Validate The Randominess Of Board Generation

Fill In Invalid Settings And Create A Random Board
    [Documentation]                 When the user specifies invalid settings, the board should not be generated. 
    [Tags]                          Handling Invalid Input
    CreateARandomBoard.Fill In Negative Tiles And Create Board
    CreateARandomBoard.Fill In Special Characters Tiles And Create Board
    CreateARandomBoard.Fill In Too Much Tiles And Create Board

    CreateARandomBoard.Fill In Negative Trading Posts And Create Board
    CreateARandomBoard.Fill In Special Characters Trading Posts And Create Board
    CreateARandomBoard.Fill In Too Much Trading Posts And Create Board

    CreateARandomBoard.Fill In Negative Numbers And Create Board
    CreateARandomBoard.Fill In Special Characters Numbers And Create Board
    CreateARandomBoard.Fill In Too Much Numbers And Create Board

Create A Board With Islands
    CreateARandomBoard.Create A Board With Islands

Take Into Account Special Rules
    [Documentation]                 The app should take the special rules and islands into account for generating a board
    [Tags]                          Handling Special Rules
    CreateARandomBoard.Create A Board With Red Numbers Not Touching
    CreateARandomBoard.Create A Board With Same Numbers Not Touching
    CreateARandomBoard.Create A Board With Same Resources Not Touching
    CreateARandomBoard.Create A Board Where 2 Or 12 Is Only Allowed On Gold
    CreateARandomBoard.Create A Board With Hidden Tiles
    CreateARandomBoard.Create A Board With Hidden Numbers
    

User Interface With Board
    [Documentation]                 The user should be able to refresh the page, and still have the generated board. The user should be able to zoom in and out, and drag the board and edit tiles.
    [Tags]                          User-interface of the Board Generator
    CreateARandomBoard.Fill Valid Settings In Setting Widget And Create Board
    CreateARandomBoard.Refresh The Board
    CreateARandomBoard.Edit A Tile 
    CreateARandomBoard.Check Trading Posts Orientation
    CreateARandomBoard.Drag The Board
    CreateARandomBoard.Zoom The Board In And Out
    #CreateARandomBoard.Recalculate Distributions
    









    


