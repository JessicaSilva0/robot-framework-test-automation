*** Settings ***
Documentation    SIGT - Declaração Anual de IRT B e C com Contabilidade

Library    SeleniumLibrary
Library    Collections

Resource     ./resources/pageObjects/page-login.robot
Resource     ./resources/pageObjects/page-login-resources.robot
Resource     ./resources/pageObjects/menus.robot
Resource     ./resources/pageObjects/IRT/page-IRT-resources.robot
Resource     ./resources/pageObjects/IRT/page-IRT.robot
Variables    ./variables/%{ENVIRONMENT}/credentials.py
Variables    ./variables/%{ENVIRONMENT}/url-variable.py
Variables    ./variables/%{ENVIRONMENT}/config-browser-variable.py
Variables    ./variables/%{ENVIRONMENT}/IRT-variables.py

Suite Setup        Login no SIGT   ${username}    ${password}
#Suite Teardown     Close Browser

*** Variables ***
${username}     ${ADMIN_USER['username']}
${password}     ${ADMIN_USER['password']}

*** Test Cases ***
CT01 - Validar Abertura de Declaração Anual de II
  [Documentation]  IRT - Abertura da Declaração
  [Tags]           Regressão  IRT
  Selecionar a Estrutura Principal
  Dado que seleciono o Menu de IRT
  Então o sistema deve abrir o formulário da declaração

CT02 - Contribuinte - Entregar declaração do período dentro do prazo
  [Documentation]  Entrega de Declaração Anual Dentro do prazo
  [Tags]           Regressão  IRT
  Dado o preenchimento dos campos da declaração dentro do prazo
  E clicar no botão Verificar Formulário

CT03 - Validar campo Indicador de Residencia
  [Documentation]  Validar o campo Indicador de Residencia diferente do que consta em Cadastro
  [Tags]           Regressão  IRT
    Dado o preenchimento do campo "Indicador de Residencia"
    Quando o Indicador for diferente do que consta em Cadastro
    Então deverá retornar mensagem de erro

CT04 - Validar campos obrigatórios sem preenchimento
  [Documentation]  Validar campos obrigatórios sem preenchimento
  [Tags]           Regressão  IRT
      Verificar Formulário
      Lista de Exceções - Informações Gerais