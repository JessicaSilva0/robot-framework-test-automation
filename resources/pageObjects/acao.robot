*** Setting ***
Library    SeleniumLibrary

*** Variables ***
#locations botões de formulários
${VERIFICAR_FORM_btn}                  xpath://input[@value='Verificar Formulário']
${GRAVAR_btn}                          xpath://*[contains(text(), "Gravar")]
${GRAVAR_E_SALVAR_btn}                 xpath://*[contains(text(), "Gravar e Continuar")]
${CANCELAR_btn}                        xpath://*[contains(text(), "Cancelar")]

*** Keywords ***
Verificar Formulário
    click element    ${VERIFICAR_FORM_btn}

Ação - Gravar Formulário
    [Arguments]     ${locator}
    click button    ${locator}

Ação - Gravar e Salvar Formulário
    [Arguments]     ${locator}
    click element   ${locator}

Ação - Cancelar Formulário
    [Arguments]     ${locator}
    click element   ${locator}

