*** Settings ***

Resource  ../sources/other.robot
Resource  ../sources/steps.robot
Resource  ../sources/variables.robot

*** Keywords ***
Successful Login
    [Arguments]  ${email}  ${password}
    Element Visible And Input Text  ${emailLocator}  ${email}
    Element Visible And Input Text  ${passwordLocator}  ${password}
    Element Visible And Click  ${buttonLocator}