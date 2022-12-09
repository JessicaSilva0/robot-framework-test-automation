*** Setting ***

Test Teardown  Close Browser

Documentation    Formulário de Cadastro
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
Formulário de Cadastro - Contribuinte Singular
     [Documentation]    Test Case para Criar NIF Singular com Sucesso
    Open Browser to Login Page SIGT
    Insert credentials Username and Password     ${username}     ${password}
    Select frame Page Principal
    Abrir Formulario de Cadastro
    Cadastrar NIF Colectivo
