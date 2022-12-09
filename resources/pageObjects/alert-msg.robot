*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${ALERT_ERROR}          id=mainMessage
${MSG_CRED_INV}         Unable to Login
${lista_excecoes1}      id=exceptionsDiv
${lista_excecoes2}      id=exceptionsDetails

*** Keywords ***
Error message required
    [Documentation]    check if username and password are ok
    [Arguments]        ${MSG_CRED_INV}
    page should contain element    ${ALERT_ERROR}
    element text should be         ${ALERT_ERROR}       ${MSG_CRED_INV}

Lista de Exceções - Formulário Validado
   element text should be         ${lista_excecoes2}    Formulário verificado com êxito.
   capture page screenshot

Lista de Exceções - Indicador de Residencia
   element text should be         ${lista_excecoes2}    Informações Gerais: Indicador de Residência está incorreto
   capture page screenshot

Lista de Exceções - Informações Gerais
   element text should be         ${lista_excecoes2}    ${ListadeExcecoes}
   capture page screenshot


