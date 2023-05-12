*** Settings ***

Resource  ../../sources/steps.robot
Resource  ../../sources/variables.robot

Force Tags  @test    @ROUTINES    @tests1
Documentation  Teknasyon Tech Routine1 Scenarios

Test Setup  Setup Chrome Driver
Test Teardown  Close All Driver


*** Test Cases ***

Input test scenario
    [Tags]  @routine1
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    Element Visible And Input Text  ${MAIN_textInput_input}  Teknasyon Tech
    sleep  3
