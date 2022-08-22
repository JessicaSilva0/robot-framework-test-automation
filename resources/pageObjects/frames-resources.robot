*** Settings ***
Documentation    Controle de Frames utilizadas no SIGT
Library  SeleniumLibrary

*** Variables ***
${NIF}    ${NIF_FINANCEIRO['NIF']}
${frame_main}        name:main
${frame_uiMap}       name:uiMap
${consulta_NIF}      Search for Person Id, Accounts and NIF
${selecionar_NIF}    id=idValue
${pesquisar_btn}     id=anTLZ1Refresh

*** Keywords ***
Selecionar a Estrutura Principal
    [Documentation]    Selecionar a pagina principal (main frame)
    wait until element is visible               ${frame_main}
    select frame                                ${frame_main}

Selecionar ui frame
    [Documentation]    Selecionar frame da declaração
    wait until element is visible               ${frame_uiMap}
    select frame                                ${frame_uiMap}
    Current Frame Should Contain   Annual Declaration of the General Regime (Financial Sector)
    Capture Page Screenshot


Desmarcar main frame
    [Documentation]    Desmarcar a pagina principal
    wait until element is visible               ${frame_main}
    unselect frame                              ${frame_main}

Desmarcar ui frame
    [Documentation]    Desmarcar a pagina uiMap
    wait until element is visible               ${frame_uiMap}
    unselect frame                              ${frame_uiMap}

# Tela de Pesquisar NIF
Pesquisar NIF
    [Arguments]     ${locator}
    click element   ${locator}
    switch window   ${consulta_NIF}
    log             ${consulta_NIF}
    input text      ${selecionar_NIF}    ${NIF}
    wait until element is visible    ${pesquisar_btn}
    click element   ${pesquisar_btn}