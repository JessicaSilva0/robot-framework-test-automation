*** Settings ***
Documentation    Serviço de Consulta IRT - Retenção na Fonte para Entidades Externas
Library         Collections
Library         RequestsLibrary
Library         JSONLibrary
Library         String
Library         OperatingSystem
Variables    ../variables/%{ENVIRONMENT}/credentials.py
Variables    ../variables/%{ENVIRONMENT}/url-variable.py
Resource     ../customLibrary/api/inss_api_resources.robot

*** Variables ***
${username}             ${AUTH_INSS_API['username']}
${password}             ${AUTH_INSS_API['password']}

*** Test Cases ***

Post Token with JWT
    [Arguments]         ${username}         ${password}
    Create Session      MySession           ${ENDPOINT_INSS_API}
    ${headers}=         Create Dictionary     Content-Type=application/json
    ${payload}=         Create Dictionary     username=${username}          password=${password}
    ${resp}=            POST On Session       MySession       /login
    ...                 data=${payload}
    ...                 headers=${headers}
    Set Suite Variable                        ${token}  JWT ${resp.json()['token']}
    ${token}         Convert To String     JWT ${resp.json()['token']}