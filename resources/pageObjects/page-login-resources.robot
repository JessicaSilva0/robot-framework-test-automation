*** Settings ***
Documentation    SIGT - TestCases to Login Page
Library    SeleniumLibrary
Library    Collections
Resource     ../resources/pageObjects/page-login.robot
Resource     ../resources/pageObjects/menus.robot
Variables    ../variables/%{ENVIRONMENT}/credentials.py
Variables    ../variables/%{ENVIRONMENT}/url-variable.py
Variables    ../variables/%{ENVIRONMENT}/config-browser-variable.py


*** Variables ***
${frame_main}            name:main

*** Keywords ***
Login no SIGT
    [Documentation]    Iniciar Sessão no SIGT
    [Arguments]        ${username}   ${password}
    [Tags]  Regressao
    Open Browser to Login Page SIGT
    Maximize Browser Window
    Insert credentials Username and Password    ${username}   ${password}


Sair de sessão
  [Documentation]  Validar logout no sistema
  click element                ${MENU_USER}
  click element                ${MENU_BTN_LOGOUT}
  Page Should Contain Element  ${LOGIN_USERNAME}
  log  ${menu_btn_logout}

Login com Sucesso
    [Documentation]    Selecionar a pagina principal

    wait until element is visible               ${frame_main}
    select frame                                ${frame_main}


Login should be OK
    [Documentation]    Check credentials ok
    [Arguments]    ${username}    ${password}
    run keyword if    '${username}'=='${EMPTY}'     Error message required
    ...     ELSE IF   '${password}'=='${EMPTY}'     Error message required
