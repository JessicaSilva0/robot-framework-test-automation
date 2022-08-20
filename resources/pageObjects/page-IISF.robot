*** Setting ***
Library    SeleniumLibrary
Resource    ./resources/pageObjects/menus.robot
Resource    ./resources/pageObjects/frames-resources.robot
Resource    ./resources/pageObjects/page-IISF-resources.robot


*** Variables ***
${frame_Main}    name:main
${frame_uiMap}   name:uiMap
&{OPTION_TIPO_ORIGEM}
...    Contribuinte=CONT
...    Oficiosa=OFCS

&{OPTION_TIPO_CARACTERISTICA}
...    1_Declaracao_Inicio_1Sem=C1
...    1_Declaracao_Inicio_2Sem=C2
...    Declaracao_do_Periodo=C3
...    Declaracao_de_Substituicao=C4
...    Declaracao_do_Periodo_de_Cessacao_1Sem=C5
...    Declaracao_do_Periodo_de_Cessacao_2Sem=C6
...    Declaracao_Oficiosa=C7
...    Declaracao_de_Correcção=C8

&{OPTION_TIPO_MOTIVO}
...    Iniciativa_do_Contribuinte=CONT
...    Notificacao=NOTF

&{OPTION_ANO_EXERCICIO}
...    exercicio_2020=2020
...    exercicio_2021=2021
...    exercicio_2022=2022

${OPTION_TIPO_RESIDENCIA}
...     Residente=RESD
...     NaoResidente=NRES

${OPTION_TIPO_SOCIEDADE}
...    Cisão=CISA
...    fusao=FUSA
...    nada=NAOA

${OPTION_TIPO_TRIB_SOCIEDADE}
...    Cisão=CISA
...    fusao=FUSA
...    nada=NAOA

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
    Preencher seção Motivo
    Preencher seção Informações Gerais
E clicar no botão Validar
Quando clicar no botão Publicar
Então o sistema deverá alterar o estado para Publicado