*** Settings ***
Documentation    SIGT PREPROD - TestCases to Login Page
...              Tests são independentes um do outro
Library    SeleniumLibrary
Library    Collections
Resource     ../resources/pageObjects/page-login.robot
Resource     ../resources/pageObjects/page-login-resources.robot
Resource     ../resources/pageObjects/alert-msg.robot
Variables    ../variables/%{ENVIRONMENT}/credentials.py
Variables    ../variables/%{ENVIRONMENT}/url-variable.py
Variables    ../variables/%{ENVIRONMENT}/config-browser-variable.py

*** Variables ***
${username}     ${ADMIN_USER['username']}
${password}     ${ADMIN_USER['password']}

*** Test Cases ***
CT01 - Início de Sessão: Login Válido
  [Documentation]  Validar Login
  [Tags]           Regressão  Login
  Given Login no SIGT    ${username}   ${password}
  When Login com Sucesso
  Then Close Browser

