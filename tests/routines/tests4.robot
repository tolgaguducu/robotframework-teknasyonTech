*** Settings ***

Resource  ../../sources/steps.robot
Resource  ../../sources/variables.robot

Force Tags  @test    @ROUTINES    @tests4
Documentation  Teknasyon Tech Routine4 Scenarios

Test Setup  Setup Chrome Driver
Test Teardown  Close All Driver


*** Test Cases ***

Checkbox in iframe test scenario
    [Tags]  @routine4
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    select frame  ${MAIN_iFrameWithCheckBox_iframe}
    Element Visible And Click  ${MAIN_checkBoxIniFrame_checkBox}
    unselect frame
    #sleep  2
    Element Visible And Input Text  ${MAIN_textInput_input}  Teknasyon Tech
    #sleep  2