*** Settings ***
Test Setup                  Set Test Variable       ${passed}    ${FALSE}
Test Teardown               Should Be True          ${passed}

*** Test Cases ***
Sign Up: Password
    [Tags]    PRODUCTQA-4119    manual    Not Executed
    Log       Not Executed

Sign Up: Checkbox Terms Of Services
    [Tags]    PRODUCTQA-5120    manual    Not Executed
    Log       Not Executed

