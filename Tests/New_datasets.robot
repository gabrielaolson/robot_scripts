*** Settings ***
Test Setup                  Set Test Variable       ${passed}    ${FALSE}
Test Teardown               Should Be True          ${passed}

*** Test Cases ***
New datasets: Articles: All settings used
    [Tags]    PRODUCTQA-4367    manual    Not Executed
    Log       Not Executed

