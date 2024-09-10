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

Health - End to End Flow
    [Tags]    test:retry(1)
    New Browser    browser=Chromium    headless=${FLAG}
    Set Browser Timeout    60    Test
    New Page    ${URL}
    Login    6999912345    1234
    Select Health
    Health Profile
    Health Got It Button
    Health Insurer Select
    Health KYC Page
    Health Checkout Page - Contact Details
    Health Checkout Page - Insured Details
    Health Checkout Page - Payment
    [Teardown]    Close Browser

TW - End to End Flow
    [Tags]    test:retry(1)    Motor
    New Browser    browser=Chromium    headless=${FLAG}
    Set Browser Timeout    60    Test
    New Page    ${URL}
    Login    6999912345    1234
    Select TW
    TW Registration Info
    Bike Detail Page
    Lead Name
    sleep    ${SHORT_WAIT}
    Got It Button
    Select Insurer TW
    Kyc Page
    Checkout Page - Contact Details_TW
    TW Checkout Page - Personal Details
    CV Checkout Page - Vehicle Details
    Checkout Page - Payment
    [Teardown]    Close Browser

FW - End to End Flow
    [Tags]    test:retry(1)    Motor
    New Browser    browser=Chromium    headless=${FLAG}
    Set Browser Timeout    60    Test
    New Page    ${URL}
    Login    6999912345    1234
    Select FW
    FW Registration Info
    Car Detail Page
    Policy Information
    Previous Policy Detail
    Lead Name
    Motor Got It Button
    Select Insurer
    Kyc Page
    Checkout Page - Contact Details
    Checkout Page - Personal Details
    Checkout Page - Vehicle Details
    Checkout Page - Previous Policy Details
    Checkout Page - Payment
    [Teardown]    Close Browser

CV - End to End Flow
    [Tags]    test:retry(1)    Motor
    New Browser    browser=Chromium    headless=${FLAG}
    Set Browser Timeout    60    Test
    New Page    ${URL}
    Login    6999912345    1234
    Select CV
    CV Registration Info
    Policy Information
    CV Previous Policy Details
    Select Pref Insurer
    CV Details Page
    Lead Name
    Got It Button
    Select Insurer - CV    RELI
    Kyc Page
    CV Checkout Page - Contact Details
    CV Checkout Page - Vehicle Details
    Type Text    ${prev.policy.no}    97876365
    Click    ${checkout.continue}
    Checkout Page - Payment
    [Teardown]    Close Browser
