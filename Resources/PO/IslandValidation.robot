*** Settings ***
Library             SeleniumLibrary
Library             String

*** Variables ***
${pos_OFFSET_x}             7.5
${neg_OFFSET_x}             -7.5


*** Keywords ***
Validation Of Generation Of Islands
    ${g_elements_lumber}=              Get WebElements                   //*[name()='g'][@id='Lumber']
    ${g_elements_water}=               Get WebElements                   //*[name()='g'][@id='Water']
    ${g_elements_NA}=                  Get WebElements                   //*[name()='g'][@id='NotAvailable']

    @{transform_values_lumber}         Create List
    @{transform_values_x}              Create List
    @{transform_values_y}              Create List

    FOR    ${element}    IN    @{g_elements_lumber}
           ${transform_value_lumber}=    Get Element Attribute    ${element}    transform
           Append To List            ${transform_values_lumber}                 ${transform_value_lumber}

           ${transform_x}=          Evaluate              ${transform_value_lumber.strip('translate()').replace('(', '').replace(')', '').split(',')[0]}
           ${transform_y}=          Evaluate              ${transform_value_lumber.strip('translate()').replace('(', '').replace(')', '').split(',')[1]}
           Append To List           ${transform_values_x}       ${transform_x}
           Append To List           ${transform_values_y}       ${transform_y}
    END
    ${length_x}         Get Length       ${transform_values_x}
    
    FOR    ${i}         IN RANGE       ${length_x}
           FOR          ${j}           IN RANGE     0      ${length_x}
                        ${delta_x}              Evaluate            abs(${transform_values_x}[${i}]-${transform_values_x}[${j}])
                        ${delta_y}              Evaluate            abs(${transform_values_y}[${i}]-${transform_values_y}[${j}])
                        Run Keyword If          ${delta_x} <= 7.5 and ${delta_y} <= 8.660254038 and ${delta_x} != 0 and ${delta_y} != 0       Capture Page Screenshot
                        Run Keyword If          ${delta_x} <= 7.5 and ${delta_y} <= 8.660254038 and ${delta_x} != 0 and ${delta_y} != 0       Fail        No Islands
           END  
    END




