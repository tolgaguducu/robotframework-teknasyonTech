*** Settings ***

Resource  ../sources/other.robot
Resource  ../sources/steps.robot
Resource  ../sources/variables.robot


*** Keywords ***

Wait Until Element Is Visible With Timeout
    [Arguments]  ${locatorElement}
    wait until element is visible  ${locatorElement}  timeout=10
    scroll element into view  ${locatorElement}


Element Visible And Click
    [Arguments]  ${locatorElement}
    Wait Until Element Is Visible With Timeout  ${locatorElement}
    click element  ${locatorElement}


Element Visible And Input Text
    [Arguments]  ${locatorElement}  ${inputText}
    Wait Until Element Is Visible With Timeout  ${locatorElement}
    input text  ${locatorElement}  ${inputText}


Check Element Text
    [Arguments]  ${locatorElement}  ${action}  ${text}
    Wait Until Element Is Visible With Timeout  ${locatorElement}
    ${result}=   set variable   ${action}
    run keyword if   "${result}" == "Contain"  element should contain  ${locatorElement}  ${text}
    run keyword if   "${result}" == "Equal"  element text should be  ${locatorElement}  ${text}
    run keyword if   "${result}" == "Not Contain"  element should not contain  ${locatorElement}  ${text}


Element Visible And Attribute Value Should Be
    [Arguments]  ${locatorElement}  ${attribute}  ${value}
    Wait Until Element Is Visible With Timeout  ${locatorElement}
    element attribute value should be  ${locatorElement}  ${attribute}  ${value}


Click To Link And Check Url After Element is Visible
    [Arguments]  ${link}  ${locatorElement2}  ${checkLink}
    Element Visible And Click  ${link}
    Wait Until Element Is Visible With Timeout  ${locatorElement2}
    location should be  ${checkLink}