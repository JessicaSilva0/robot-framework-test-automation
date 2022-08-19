*** Setting ***
Library    SeleniumLibrary
Resource    ./resources/pageObjects/menus.robot
Resource    ../resources/pageObjects/frames-resources.robot
Resource    ../resources/pageObjects/page-IISF-resources.robot


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