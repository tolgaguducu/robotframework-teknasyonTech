*** Settings ***

Resource  ../sources/other.robot


*** Variables ***

${chrome_browser}   Chrome
${base_url}  https://seleniumbase.io/demo_page


*** Keywords ***

Setup Chrome Driver
    ${chrome_driver}=  get chrome driver
    create webdriver  ${chrome_browser}  executable_path=${chrome_driver}
    go to  ${base_url}
    #maximize browser window

Close All Driver
    close all browsers