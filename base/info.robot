*** Settings ***
Resource  ../sources/other.robot
Resource  ../sources/steps.robot
Library  DateTime


*** Variables ***
${chrome_browser}   Chrome
${base_url}  https://seleniumbase.io/demo_page
${LOGIN_email_input}  css=input[id='login-email']


*** Keywords ***
Element Visible And Input Text
    [Arguments]  ${locatorElement}  ${inputText}
    Wait Until Element Is Visible With Timeout  ${locatorElement}
    input text  ${locatorElement}  ${inputText}


*** Test Cases ***
Input test scenario
    [Tags]  @inputTest  @regression
    Wait Until Element Is Visible With Timeout  ${MAIN_demoPage_title}
    Element Visible And Input Text  ${MAIN_textInput_input}  Teknasyon Tech