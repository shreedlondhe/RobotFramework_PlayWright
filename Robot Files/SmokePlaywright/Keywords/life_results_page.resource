*** Settings ***
Resource          ../Global/super.robot

*** Keywords ***
Life Got It Button
    sleep    1
    ${value}=    Get Element States    ${life.okgotitbtn}    then    bool(value & visible)
    Run Keyword If    ${value}==True    Click    ${life.okgotitbtn}
    sleep    1
    ${value}=    Get Element States    ${life.gotitbtn}    then    bool(value & visible)
    Run Keyword If    ${value}==True    Click    ${life.gotitbtn}

Life Insurer Select
    sleep    8
    Click    //button[@data-auto='viewdetail-BAJAJLI-Smart Protection Goal']
    Click    //button[@id='proceed-btn']
