*** Setting ***
Documentation    page REGISTRATION FORM
Library    SeleniumLibrary
Resource    ../resources/pageObjects/page-reg-form-resources.robot
Resource    ../resources/pageObjects/page-reg-form.robot
Resource    ../resources/pageObjects/menus.robot
Resource    ../resources/pageObjects/page-login.robot
Variables    ../variables/%{ENVIRONMENT}/credentials.py
Variables    ../variables/%{ENVIRONMENT}/url-variable.py
Variables    ../variables/%{ENVIRONMENT}/config-browser-variable.py

*** Variables ***
${username}     ${ADMIN_USER['username']}
${password}     ${ADMIN_USER['password']}

*** Test Cases ***
Criar NIF Singular
    Open Browser to Login Page SIGT
    Insert credentials Username and Password     ${username}     ${password}
    wait until element is visible     ${frame_Main}
    select frame                      ${frame_Main}
    Abrir Formulario de Cadastro
    wait until element is visible     ${frame_uiMap}
    select frame                      ${frame_uiMap}
    Click nav form - Detalhes de Registo
    select from list by value         ${TIPO_CONTR}     ${OPTION_TIPO_CONTR.Colectivo}