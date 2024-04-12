*** Settings ***
Library                             SeleniumLibrary
Library                             Collections
Library                             String


*** Variables ***


*** Keywords ***
Trading Posts Orientation And Validation
    ${transform_L}=                 Set Variable                       ${EMPTY}
    ${transform_TS}=                Set Variable                       ${EMPTY}
    ${style}=                       Set Variable                       ${EMPTY}

    ${location_L1}=                  Set Variable                       translate(0, 0)
    ${location_L2}=                  Set Variable                       translate(7.5, 4.330127018922193)
    ${location_L3}=                  Set Variable                       translate(0, 8.660254037844386)
    ${location_L4}=                  Set Variable                       translate(7.5, 12.99038105676658)

    ${location_TS1}=                  Set Variable                      translate(0, 0)
    ${location_TS2}=                  Set Variable                      translate(7.5, 4.330127018922193)
    ${location_TS3}=                  Set Variable                      translate(0, 8.660254037844386)
    ${location_TS4}=                  Set Variable                      translate(7.5, 12.99038105676658)

    ${g_elements_L}=                Get WebElements                   //*[name()='g'][@id='Lumber']
    ${g_elements_TS}=               Get WebElements                   //*[name()='g'][@id='3:1']    

    # Get location of the resource tile
    FOR    ${element}    IN    @{g_elements_L}
           ${transform_L}=    Get Element Attribute    ${element}    transform
    END
    Log     ${transform_L}
    ${transform_L}          Convert To String          ${transform_L}
    ${location_L1}          Convert To String          ${location_L1}
    ${location_L2}          Convert To String          ${location_L2}
    ${location_L3}          Convert To String          ${location_L3}
    ${location_L4}          Convert To String          ${location_L4}
    
    # Get location of the trading post
    FOR    ${element}    IN    @{g_elements_TS}
           ${transform_TS}=    Get Element Attribute    ${element}    transform
    END
    Log     ${transform_TS}
    ${transform_TS}          Convert To String          ${transform_TS}
    ${location_TS1}          Convert To String          ${location_TS1}
    ${location_TS2}          Convert To String          ${location_TS2}
    ${location_TS3}          Convert To String          ${location_TS3}
    ${location_TS4}          Convert To String          ${location_TS4}

    # Get current rotation of the trading post
    ${rotation_element}=           Get WebElements                  //*[name()='polygon'][contains(@style,'rotate')]
    FOR    ${element}    IN    @{rotation_element}
           ${style}=    Get Element Attribute    ${element}    style
    END
    Log     ${style}
    ${style}                         Convert To String         ${style}
    ${rotate}                        Get Substring             ${style}    -15
    
    IF      $transform_L == $location_L1 and $transform_TS == $location_TS2
               Should Be Equal As Strings       ${rotate}        rotate(120deg);
    ELSE IF    $transform_L == $location_L1 and $transform_TS == $location_TS3   
               Should Be Equal As Strings       ${rotate}        rotate(180deg);
    ELSE IF    $transform_L == $location_L2 and $transform_TS == $location_TS1  
               Should Be Equal As Strings       ${rotate}        rotate(300deg); 
    ELSE IF    $transform_L == $location_L2 and $transform_TS == $location_TS3  
               Should Be Equal As Strings       ${rotate}        rotate(240deg); 
    ELSE IF    $transform_L == $location_L2 and $transform_TS == $location_TS4  
               Should Be Equal As Strings       ${rotate}        rotate(180deg); 
    ELSE IF    $transform_L == $location_L3 and $transform_TS == $location_TS1  
               Should Be Equal As Strings       ${rotate}        rotate(360deg); 
    ELSE IF    $transform_L == $location_L3 and $transform_TS == $location_TS2  
               Should Be Equal As Strings       ${rotate}        rotate(60deg); 
    ELSE IF    $transform_L == $location_L3 and $transform_TS == $location_TS4  
               Should Be Equal As Strings       ${rotate}        rotate(120deg); 
    ELSE IF    $transform_L == $location_L4 and $transform_TS == $location_TS3  
               Should Be Equal As Strings       ${rotate}        rotate(300deg); 
    ELSE IF    $transform_L == $location_L4 and $transform_TS == $location_TS2  
               Should Be Equal As Strings       ${rotate}        rotate(360deg); 
    END
   