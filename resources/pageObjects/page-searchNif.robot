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
    switch window   Search for Person Id, Accounts and NIF
    input text      ${selecionar_NIF}    ${NIF_FINANCEIRO['NIF']}
    wait until element is visible    ${pesquisar_btn}
    click element   ${pesquisar_btn}