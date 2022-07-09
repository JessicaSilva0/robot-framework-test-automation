*** Settings ***
Documentation    Documentação da API no Swagger 10.129.105.122:7016/inss-api
Library          RequestsLibrary
Library          Collections
Resource   ../resources/irt-map-retention-resources.robot
Variables  ../variables/%{ENVIRONMENT}/credentials.py
Variables  ../variables/%{ENVIRONMENT}/url-variable.py

*** Variables ***

*** Test Cases ***

AAAAAA
    [Tags]  post
    ${header}   create dictionary  Content-Type=application/json  Authorization=eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmYWRhQXBpIiwiZXhwIjoxNzQ5ODE5MzA4fQ.vQOTio5riCC59CYnef6Xt780rH-Pgm6pQ4agAqx7iUG-VQOWFmdUS1E7u7nNRtyeF9e-9p8QZtEtZHS7soJKGw
    ${data}=    create dictionary  data=${payload}
    ${resp}=    POST     ${API_INSS}    headers=${header}     data=${payload}
    Should Be Equal As Strings  ${resp.status_code}  200






