*** Settings ***
Test Setup                  Set Test Variable       ${passed}    ${FALSE}
Test Teardown               Should Be True          ${passed}

*** Test Cases ***
Configuration: Dataset: Article Feed: delivery
    [Tags]    PRODUCTQA-4266    manual    Not Executed
    Log       Not Executed

Configuration: Dataset: Products: URL
    [Tags]    PRODUCTQA-4318    manual    Not Executed
    Log       Not Executed

Configuration: Dataset: Products: delivery day
    [Tags]    PRODUCTQA-4367    manual    Not Executed
    Log       Not Executed

