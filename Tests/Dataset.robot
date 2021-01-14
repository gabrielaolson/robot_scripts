*** Settings ***
Test Setup                  Set Test Variable       ${passed}    ${FALSE}
Test Teardown               Should Be True          ${passed}

*** Test Cases ***
Dataset: Product counter
    [Tags]    PRODUCTQA-4386    manual    Not Executed
    Log       Not Executed

Dataset: Item counter
    [Tags]    PRODUCTQA-4288    manual    Not Executed
    Log       Not Executed

Dataset: Right sidebar widget in datasets
    [Tags]    PRODUCTQA-4295    manual    Not Executed
    Log       Not Executed

