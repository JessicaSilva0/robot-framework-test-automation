*** Setting ***
Library    SeleniumLibrary
Resource    ./resources/pageObjects/menus.robot
Resource    ./resources/pageObjects/frames-resources.robot
Resource    ./resources/pageObjects/page-searchNif.robot
Resource    ./resources/pageObjects/acao.robot
Resource    ./resources/pageObjects/alert-msg.robot
Resource    ./resources/pageObjects/page-IISF-resources.robot


*** Variables ***
${frame_Main}    name:main
${frame_uiMap}   name:uiMap

*** Keywords ***
Dado que seleciono o Menu de Imposto Industrial
    Open Menu
    Open SubMenu - Modelo 1 - Regime Geral (Sector Financeiro)  ${MENU_II}
    Selecionar Item - Regime Geral (Sector Financeiro)          ${SUBMENU_II_RegimegeralFinanceiro}
Quando clicar no Botão Adicionar
    Adicionar nova Declaração                                   ${SUBMENU_II_RegimegeralFinanceiro_ADD}
Então o sistema deve abrir o formulário da declaração
    Selecionar ui frame


Dado o preenchimento dos campos da declaração dentro do prazo
    Section - Motivo
    Section - Informações Gerais
    Section - Demonstração de Resultados
E clicar no botão Verificar Formulário
    Verificar Formulário
    Retornar mensagem de validação
Quando clicar no botão Publicar
Então o sistema deverá alterar o estado para Publicado