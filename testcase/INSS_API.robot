*** Settings ***
Documentation    Serviço de Consulta IRT - Retenção na Fonte para Entidades Externas
Library    Collections
Library    RequestsLibrary
Variables    ../variables/%{ENVIRONMENT}/credentials.py
Variables    ../variables/%{ENVIRONMENT}/url-variable.py
Resource     ../customLibrary/api/inss_api_resources.robot

*** Variables ***

*** Test Cases ***
test
    Get the API Token
