*** Settings ***
Test Setup                  Set Test Variable       ${passed}    ${FALSE}
Test Teardown               Should Be True          ${passed}

*** Test Cases ***
Recover password: Mail not registered
    [Tags]    PRODUCTQA-4135    manual    Not Executed
    Log       Not Executed

Recover password: Mail registered
    [Tags]    PRODUCTQA-4134    manual    Not Executed
    Log       Not Executed

Recover password: Successful
    [Tags]    PRODUCTQA-4139    manual    Not Executed
    Log       Not Executed

