*** Settings ***
Test Setup                  Set Test Variable       ${passed}    ${FALSE}
Test Teardown               Should Be True          ${passed}

*** Test Cases ***
First Use: Product: new
    [Tags]    PRODUCTQA-3445    manual    Not Executed
    Log       Not Executed

