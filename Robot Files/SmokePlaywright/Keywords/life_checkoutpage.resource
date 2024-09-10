*** Settings ***
Resource          ../Global/super.robot

*** Keywords ***
Life Checkout Page - Insured Details
    sleep    2
    Click    ${life.title.select}
    Type Text    ${life.checkout.lname}    Yadav
    Type Text    ${life.checkout.mobileno}    6888812345
    Type Text    ${life.checkout.email}    automationtesting@turtlemint.com
    sleep    1
    Click    ${life.checkout.continuebtn}

Life Checkout Page - User Approval
    Click    ${life.checkout.checkmark1}
    Click    ${life.checkout.checkmark2}
    Click    ${life.checkout.submit&proceedbtn}
    sleep    3
