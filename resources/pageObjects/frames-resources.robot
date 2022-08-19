*** Settings ***
Documentation    Controle de Frames utilizadas no SIGT
Library  SeleniumLibrary

*** Variables ***
${frame_main}    name:main
${frame_uiMap}   name:uiMap

*** Keywords ***
Selecionar main frame
    [Documentation]    Selecionar a pagina principal
    wait until element is visible               ${frame_main}
    select frame                                ${frame_main}

Selecionar ui frame
    [Documentation]    Selecionar a pagina uiMap
    wait until element is visible               ${frame_uiMap}
    select frame                                ${frame_uiMap}

Desmarcar main frame
    [Documentation]    Desmarcar a pagina principal
    wait until element is visible               ${frame_main}
    deselect frame                              ${frame_main}

Desmarcar ui frame
    [Documentation]    Desmarcar a pagina uiMap
    wait until element is visible               ${frame_uiMap}
    deselect frame                              ${frame_uiMap}

