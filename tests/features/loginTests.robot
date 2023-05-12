*** Settings ***

Resource  ../../sources/steps.robot
Resource  ../../sources/variables.robot


Force Tags  @test    @FEATURES    @loginTests
Documentation  Teknasyon Tech Login Test Scenarios

Test Setup  Setup Chrome Driver
Test Teardown  Close All Driver


*** Test Cases ***
Login Example
    [Tags]  @loginTest1
    Successful Login  example@mail.com  password123
    sleep  2