*** Settings ***
Documentation    Controle de Frames utilizadas no SIGT
Library  SeleniumLibrary

*** Variables ***
${selecionar_NIF}    id=idValue
${pesquisar_btn}     id=anTLZ1Refresh

*** Keywords ***
Abrir pop-up - Pesquisar NIF
    [Arguments]     ${locator}
    click element   ${locator}
    switch window   Search for Person Id, Accounts and NIF for IRTBCOA
    input text      ${selecionar_NIF}    ${NIF_FINANCEIRO['NIF']}
    wait until element is visible    ${pesquisar_btn}
    click element   ${pesquisar_btn}

Abrir pop-up - Pesquisar NIF Representante Legal
    [Arguments]     ${locator}
    click element   ${locator}
    switch window   Search for NIF Accountant / NIF Legal Representative
    input text      ${selecionar_NIF}    ${NIF_RepresentanteLegal['NIF']}
    wait until element is visible    ${pesquisar_btn}
    click element   ${pesquisar_btn}
    wait until element is visible    css:.gridSelected > .paddedCell:nth-child(2) > span
    click element        css:.gridSelected > .paddedCell:nth-child(2) > span

Abrir pop-up - Pesquisar NIF Tecnico de Contas
    [Arguments]     ${locator}
    click element   ${locator}
    switch window   Search for NIF Accountant / NIF Legal Representative
    input text      ${selecionar_NIF}    ${NIF_TECNICOdeCONTAS['NIF']}
    wait until element is visible    ${pesquisar_btn}
    click element   ${pesquisar_btn}
    wait until element is visible    css:.gridSelected > .paddedCell:nth-child(2) > span
    click element        css:.gridSelected > .paddedCell:nth-child(2) > span