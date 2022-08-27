*** Setting ***
Library    SeleniumLibrary
Resource    ./resources/pageObjects/frames-resources.robot
Resource    ./resources/pageObjects/menus.robot
Resource    ./resources/pageObjects/acao.robot
Resource    ./resources/pageObjects/IRT/page-IRT-resources.robot
Resource    ./resources/pageObjects/page-searchNif.robot

*** Variables ***
${frame_Main}    name:main
${frame_uiMap}   name:uiMap

*** Keywords ***
Dado que seleciono o Menu de IRT
    Open Menu
    Open SubMenu - Declaração Anual de IRT                              ${MENU_IRT}
    Selecionar Item - Grupo B e C com Contabilidade Organizada          ${SUBMENU_IRT_GROUP_BC_contab}

Então o sistema deve abrir o formulário da declaração
    Selecionar ui frame
    log title

Dado o preenchimento dos campos da declaração dentro do prazo
    Section - Motivo
    Section - Informações Gerais
    Section - Demonstração de Resultados
E clicar no botão Verificar Formulário
    Verificar Formulário
Quando clicar no botão Publicar
Então o sistema deverá alterar o estado para Publicado