*** Settings ***
Test Setup                  Set Test Variable       ${passed}    ${FALSE}
Test Teardown               Should Be True          ${passed}

*** Test Cases ***
Download dataset 
    [Tags]    PRODUCTQA-4285    manual    Not Executed
    Log       Not Executed

Tooltips right widget for articles
    [Tags]    PRODUCTQA-4280    manual    Not Executed
    Log       Not Executed

Tool tips right widget for products
    [Tags]    PRODUCTQA-4260    manual    Not Executed
    Log       Not Executed

