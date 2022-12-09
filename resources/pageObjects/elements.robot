*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${LINK}     https://www.bolttech.co.th/en/car-insurance
${banner}    id:onetrust-banner-sdk
${group}     id:onetrust-button-group
${accept}   id:onetrust-accept-btn-handler
${mobile emulation}=    Create Dictionary    deviceName=Google Nexus 5
*** Keywords ***
Bolt site
     Open Browser    ${Baseurl}    ${browser}   options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")

Specifying a Known Mobile Device
    ${mobile emulation}=    Create Dictionary    deviceName=Nexus 5
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_experimental_option    mobileEmulation    ${mobile emulation}
    Create Webdriver    Chrome    chrome_options=${chrome options}
    Goto    https://www.bolttech.co.th/en/device-protection

Cookies accept
        wait until element is visible    ${banner}
        page should contain element    ${banner}
        Click Element     ${accept}


