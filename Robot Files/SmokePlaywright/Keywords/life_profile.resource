*** Settings ***
Resource          ../Global/super.robot

*** Keywords ***
Select Gender
    [Arguments]    ${gender.of.user}
    sleep    ${SHORT_WAIT}
    IF    '${gender.of.user}' == 'male'
    Click    ${gender.male}
    ELSE
    Click    ${gender.female}
    END

Select Date of Birth-Life
    Click    //input[contains(@placeholder,'Enter Date')]
    Select Options By    css=select:nth-child(2)    value    1990
    Select Options By    xpath = (//select[@class='sc-iQKALj gwKrYD'])[2]    index    11
    Click    ${dec.dob}

Smoke or Chew Tobacco
    [Arguments]    ${user.has.tobacco}
    IF    '${user.has.tobacco}' == 'yes'
    Click    ${tobacco.yes}
    ELSE
    Click    ${tobacco.no}
    END

Select Approx Annual Income
    Click    ${life.common.nxtbtn}

Select Sum Insured
    [Arguments]    ${value.sumInsured}
    Click    ${sumassured.dropdown}
    Click    //li[@value=${value.sumInsured}]
    Click    ${life.common.nxtbtn}

Lead Name-Life
    ${random_name_}=    Name Female
    Type Text    ${life.lead.name}    ${random_name_}
    sleep    1
    Click    ${life.common.nxtbtn}
