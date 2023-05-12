*** Settings ***

Resource  ../../sources/steps.robot
Resource  ../../sources/variables.robot

Force Tags  @test    @ROUTINES    @tests5
Documentation  Teknasyon Tech Routine5 Scenarios

Test Setup  Setup Chrome Driver
Test Teardown  Close All Driver


*** Test Cases ***

Go to url and check test scenario
    [Tags]  @routine5
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    Click To Link And Check Url After Element is Visible  ${MAIN_urlLink_button}  ${MAIN_SeleniumBase_title}  https://example.com/
