*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_USERNAME}   id=userId
${LOGIN_PASSWORD}   id=password
${LOGIN_BTN}        id=loginButton

*** Keywords ***
Open Browser to Login Page SIGT
     Open Browser    ${SIGT_URL_LOGIN}    ${browser}   options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")

Insert credentials Username and Password
    [Arguments]    ${username}  ${password}
    input text     ${LOGIN_USERNAME}    ${username}
    input text     ${LOGIN_PASSWORD}    ${password}
    click button   ${LOGIN_BTN}