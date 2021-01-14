*** Settings ***
Test Setup                  Set Test Variable       ${passed}    ${FALSE}
Test Teardown               Should Be True          ${passed}

*** Test Cases ***
Login: Wrong credentials - Password
    [Tags]    PRODUCTQA-3150    manual    Not Executed
    Log       Not Executed

Login: Wrong credentials - Username
    [Tags]    PRODUCTQA-3140    manual    Not Executed
    Log       Not Executed

Login: Successful request - Mail
    [Tags]    PRODUCTQA-4532    manual    Not Executed
    Log       Not Executed

Login: Successful request - Username
    [Tags]    PRODUCTQA-4230    manual    Not Executed
    Log       Not Executed

Login: Link to Sign Up
    [Tags]    PRODUCTQA-4135    manual    Not Executed
    Log       Not Executed

Login: Link to Recover Password
    [Tags]    PRODUCTQA-4136    manual    Not Executed
    Log       Not Executed

