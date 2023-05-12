*** Settings ***

Resource  ../../sources/steps.robot
Resource  ../../sources/variables.robot

Force Tags  @test    @ROUTINES    @tests2
Documentation  Teknasyon Tech Routine2 Scenarios

Test Setup  Setup Chrome Driver
Test Teardown  Close All Driver


*** Test Cases ***

Button click test scenario
    [Tags]  @routine2
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    Check Element Text  ${MAIN_paragraphWith_text}  Equal  This Text is Green
    Element Visible And Attribute Value Should Be  ${MAIN_readOnlyText_input}  value  The Color is Green
    Element Visible And Click  ${MAIN_clickMe_button}
    Check Element Text  ${MAIN_paragraphWith_text}  Equal  This Text is Purple
    Element Visible And Attribute Value Should Be  ${MAIN_readOnlyText_input}  value  The Color is Purple
    #sleep  2