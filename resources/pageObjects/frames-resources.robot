*** Settings ***
Documentation    Controle de Frames utilizadas no SIGT
Library  SeleniumLibrary

*** Variables ***
${frame_main}        name:main
${frame_uiMap}       name:uiMap

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