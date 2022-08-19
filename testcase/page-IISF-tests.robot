*** Settings ***
Documentation    SIGT - Imposto Industrial Declaração Anual

Library    SeleniumLibrary
Library    Collections
Resource     ../resources/pageObjects/page-login.robot
Resource     ../resources/pageObjects/page-login-resources.robot
Resource     ../resources/pageObjects/page-IISF-resources.robot
Resource     ../resources/pageObjects/page-IISF.robot
Resource     ../resources/pageObjects/menus.robot
Variables    ../variables/%{ENVIRONMENT}/credentials.py
Variables    ../variables/%{ENVIRONMENT}/url-variable.py
Variables    ../variables/%{ENVIRONMENT}/config-browser-variable.py

Test Setup        Login no SIGT   ${username}    ${password}
Test Teardown     Close Browser

*** Variables ***
${username}     ${ADMIN_USER['username']}
${password}     ${ADMIN_USER['password']}

*** Test Cases ***
CT01 - Validar Abertura de Declaração Anual de II
  [Documentation]  Imposto Industrial - Abertura da Declaração
  [Tags]           Regressão  ImpostoIndustrial
  Selecionar main frame
  Dado que seleciono o Menu de Imposto Industrial
  Quando clicar no Botão Adicionar
  Então o sistema deve abrir o formulário da declaração