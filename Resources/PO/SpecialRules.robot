*** Settings ***
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
Red Numbers Can Not Touch
    Scroll Element Into View       //input[@id='redNumbersCanTouch']
    Click Element                  //input[@id='redNumbersCanTouch']

Same Numbers Can Not Touch
    Scroll Element Into View       //input[@id='sameNumbersCanTouch']
    Click Element                  //input[@id='sameNumbersCanTouch']

Same Resources Can Touch
    Scroll Element Into View       //input[@id='resourcesCanTouch'] 
    Click Element                  //input[@id='resourcesCanTouch']

Same Resources Can Not Touch
    Scroll Element Into View       //input[@id='resourcesCanTouch'] 
    # Is alreday enabled in default. 

Start With Hidden Tiles
    Scroll Element Into View       //input[@id='hiddenTiles']
    Click Element                  //input[@id='hiddenTiles']

Start With Hidden Numbers
    Scroll Element Into View       //input[@id='hiddenNumbers']
    Click Element                  //input[@id='hiddenNumbers']

Only Allow 2 or 12 on Gold
    Scroll Element Into View       //input[@id='allowAllGold']
    Click Element                  //input[@id='allowAllGold']
