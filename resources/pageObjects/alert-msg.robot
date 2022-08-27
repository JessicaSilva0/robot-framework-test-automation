*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${ALERT_ERROR}          id=mainMessage
${MSG_CRED_INV}         Unable to Login
${MSG_ERRO}            id=exceptionsDiv

*** Keywords ***
Error message required
    [Documentation]    check if username and password are ok
    [Arguments]        ${MSG_CRED_INV}
    page should contain element    ${ALERT_ERROR}
    element text should be         ${ALERT_ERROR}       ${MSG_CRED_INV}

Retornar mensagem de validação
    page should contain     Formulário verificado com êxito.
