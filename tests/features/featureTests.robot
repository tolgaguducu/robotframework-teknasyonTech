*** Settings ***

Resource  ../../sources/steps.robot
Resource  ../../sources/variables.robot

Force Tags  @test    @FEATURES    @featureTest
Documentation  Teknasyon Tech Features Test Scenarios

Test Setup  Setup Chrome Driver
Test Teardown  Close All Driver


*** Test Cases ***
Input test scenario
    [Tags]  @inputTest  @regression
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    Element Visible And Input Text  ${MAIN_textInput_input}  Teknasyon Tech
    #sleep  3


Button click test scenario
    [Tags]  @buttonClick  @regression
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    Check Element Text  ${MAIN_paragraphWith_text}  Equal  This Text is Green
    Element Visible And Attribute Value Should Be  ${MAIN_readOnlyText_input}  value  The Color is Green
    Element Visible And Click  ${MAIN_clickMe_button}
    Check Element Text  ${MAIN_paragraphWith_text}  Equal  This Text is Purple
    Element Visible And Attribute Value Should Be  ${MAIN_readOnlyText_input}  value  The Color is Purple
    #sleep  2


Dropdown select test scenario
    [Tags]  @dropdown
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    select from list by index  ${MAIN_select_dropdown}  2
    #sleep  2
    Element Visible And Attribute Value Should Be  ${MAIN_htmlMeter_meter}  value  0.75
    select from list by value  ${MAIN_select_dropdown}  100%
    #sleep  2
    Element Visible And Attribute Value Should Be  ${MAIN_htmlMeter_meter}  value  1


Checkbox in iframe test scenario
    [Tags]  @iFrame
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    select frame  ${MAIN_iFrameWithCheckBox_iframe}
    Element Visible And Click  ${MAIN_checkBoxIniFrame_checkBox}
    unselect frame
    #sleep  2
    Element Visible And Input Text  ${MAIN_textInput_input}  Teknasyon Tech
    #sleep  2


Go to url and check test scenario
    [Tags]  @urlCheck   @regression
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    Click To Link And Check Url After Element is Visible  ${MAIN_urlLink_button}  ${MAIN_SeleniumBase_title}  https://example.com/
