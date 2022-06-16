*** Settings ***
Documentation    SIGT PREPROD - TestCases to Login Page
...              Tests são independentes um do outro
Library    SeleniumLibrary
Library    Collections
Resource     ../resources/pageObjects/page-login.robot
Resource     ../resources/pageObjects/alert-msg.robot
Variables    ../variables/%{ENVIRONMENT}/credentials.py
Variables    ../variables/%{ENVIRONMENT}/url-variable.py
Variables    ../variables/%{ENVIRONMENT}/config-browser-variable.py


*** Variables ***
${username}     ${ADMIN_USER['username']}
${password}     ${ADMIN_USER['password']}



*** Test Cases ***
Sucessful SIGT Login
    [Documentation]    Iniciar Sessão no SIGT
    [Tags]  Regressao
    Open Browser to Login Page SIGT
    Insert credentials Username and Password    ${username}   ${password}

Login shoul be OK
    [Documentation]    Check credentials ok
    [Arguments]    ${username}    ${password}
    run keyword if    '${username}'=='${EMPTY}'     Error message required
    ...     ELSE IF   '${password}'=='${EMPTY}'     Error message required


