*** Settings ***
Resource                            ../Resources/PO/HomePage.robot
Resource                            ../Resources/PO/SettingPage.robot
Resource                            ../Resources/PO/Settings.robot
Resource                            ../Resources/PO/SpecialRules.robot
Resource                            ../Resources/PO/CreateBoardButton.robot
Resource                            ../Resources/PO/ValidationRandomBoard.robot
Resource                            ../Resources/PO/ValidateCorrectInput.robot
Resource                            ../Resources/PO/ValidationHidden.robot
Resource                            ../Resources/Common.robot
Resource                            ../Resources/PO/Zooming.robot
Resource                            ../Resources/PO/IslandValidation.robot
Resource                            ../Resources/PO/RefreshPage.robot
Resource                            ../Resources/PO/DragAndDrop.robot
Resource                            ../Resources/PO/EditTiles.robot
Resource                            ../Resources/PO/Recalculate.robot
Resource                            ../Resources/PO/ValidateRecalculation.robot
Resource                            ../Resources/PO/ValidationTSOrientation.robot

*** Keywords ***
Fill Valid Settings In Setting Widget And Create Board
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Valid Settings 
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    ValidateCorrectInput.Validate Correct Resources Trading Posts Numbers

Validate The Randominess Of Board Generation
    ValidationRandomBoard.Inspection Of The First Board
    SettingPage.Load Setting Page
    CreateBoardButton.Create Board Using Create Board Button
    ValidationRandomBoard.Inspection Of The Second Board
    ValidationRandomBoard.Validate Random Location
    ValidationRandomBoard.Validate Random Number

Fill In Negative Tiles And Create Board
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Negative Tiles Settings
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Fill In Negative Trading Posts And Create Board
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Negative Trading Posts Settings
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Fill In Negative Numbers And Create Board
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Negative Numbers Settings
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Fill In Special Characters Tiles And Create Board
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Special Characters Tiles Settings
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Fill In Special Characters Trading Posts And Create Board
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Special Characters Trading Posts Settings
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Fill In Special Characters Numbers And Create Board 
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Special Characters Numbers Settings
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test


Fill In Too Much Tiles And Create Board
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Too Much Tiles Settings
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Fill In Too Much Trading Posts And Create Board
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Too Much Trading Posts Settings
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Fill In Too Much Numbers And Create Board
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Too Much Numbers Settings
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Create A Board With Islands
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Island Settings
    SpecialRules.Same Resources Can Touch
    CreateBoardButton.Create Board Using Create Board Button
    IslandValidation.Validation Of Generation Of Islands

Create A Board With Red Numbers Not Touching
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Settings Red Numbers Rule
    SpecialRules.Same Resources Can Touch
    SpecialRules.Red Numbers Can Not Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Create A Board With Same Numbers Not Touching
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Settings Same Numbers Rule
    SpecialRules.Same Resources Can Touch
    SpecialRules.Same Numbers Can Not Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Create A Board With Same Resources Not Touching
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Settings Same Resources Rule
    SpecialRules.Same Resources Can Not Touch
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Create A Board Where 2 Or 12 Is Only Allowed On Gold
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Settings Gold Rule
    SpecialRules.Same Resources Can Touch
    SpecialRules.Only Allow 2 or 12 on Gold
    CreateBoardButton.Create Board Using Create Board Button
    CreateBoardButton.Error Found
    End Web Test

Create A Board With Hidden Tiles
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Valid Settings
    SpecialRules.Same Resources Can Touch
    SpecialRules.Start With Hidden Tiles
    CreateBoardButton.Create Board Using Create Board Button
    ValidationHidden.Validate Hidden Tiles
    End Web Test

Create A Board With Hidden Numbers
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Valid Settings
    SpecialRules.Same Resources Can Touch
    SpecialRules.Start With Hidden Numbers
    CreateBoardButton.Create Board Using Create Board Button
    ValidationHidden.Validate Hidden Numbers
    End Web Test

Refresh The Board
    RefreshPage.Refresh Page
    RefreshPage.Verify Same Board

Edit A Tile 
    SettingPage.Load Setting Page
    Settings.Fill In Valid Settings
    CreateBoardButton.Create Board Using Create Board Button
    EditTiles.Edit Resource Of Tile
    EditTiles.Edit Number Of Tile
    EditTiles.Edit Rotation Trading Post
    EditTiles.Change Hidden Tiles
    EditTiles.Change Hidden Number
    End Web Test

Recalculate Distributions
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Valid Settings
    CreateBoardButton.Create Board Using Create Board Button
    SettingPage.Load Setting Page
    Settings.Fill In Tiles For Recalculation
    Recalculate.Recalculate Resource Distribution
    ValidateRecalculation.Validate Recalculation Resources
    SettingPage.Load Setting Page
    Settings.Fill In Trading Posts For Recalculation
    Recalculate.Recalculate Trading Posts Distribution
    ValidateRecalculation.Validate Recalculation Trading Posts
    SettingPage.Load Setting Page
    Settings.Fill In Numbers For Recalculation
    Recalculate.Recalculate Numbers Distribution
    ValidateRecalculation.Validate Recalculation Numbers


Check Trading Posts Orientation
    Begin Web Test
    HomePage.Load Home Page 
    SettingPage.Load Setting Page
    Settings.Fill In Settings For Trading Posts Orientation Check
    CreateBoardButton.Create Board Using Create Board Button
    ValidationTSOrientation.Trading Posts Orientation And Validation

Drag The Board
    DragAndDrop.Drag And Drop The Board

Zoom The Board In And Out
    Zooming.Zoom In and Out
    End Web Test


