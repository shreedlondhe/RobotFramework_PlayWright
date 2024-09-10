*** Settings ***
Resource          ../Global/super.robot
Resource          ../Global/global_variables.robot

*** Test Cases ***
Life - End to End Flow
    [Tags]    test:retry(1)
    New Browser    browser=Chromium    headless=${FLAG}
    Set Browser Timeout    60    Test
    New Page    ${URL}
    Login    6999912345    1234
    Select Life
    Select Gender    male
    Select Date of Birth-Life
    Smoke or Chew Tobacco    no
    Select Approx Annual Income
    Select Sum Insured    20000000
    Lead Name-Life
    Life Got It Button
    Life Insurer Select
    Life Checkout Page - Insured Details
    Life Checkout Page - User Approval
    [Teardown]    Close Browser
