*** Settings ***

Resource  ../../sources/steps.robot
Resource  ../../sources/variables.robot

Force Tags  @test    @ROUTINES    @tests3
Documentation  Teknasyon Tech Routine3 Scenarios

Test Setup  Setup Chrome Driver
Test Teardown  Close All Driver


*** Test Cases ***

Dropdown select test scenario
    [Tags]  @routine3
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    select from list by index  ${MAIN_select_dropdown}  2
    #sleep  2
    Element Visible And Attribute Value Should Be  ${MAIN_htmlMeter_meter}  value  0.75
    select from list by value  ${MAIN_select_dropdown}  100%
    #sleep  2
    Element Visible And Attribute Value Should Be  ${MAIN_htmlMeter_meter}  value  1