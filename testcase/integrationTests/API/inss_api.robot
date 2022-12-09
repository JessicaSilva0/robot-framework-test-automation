*** Settings ***
Library         Collections
Library         RequestsLibrary
Library         JSONLibrary
Library         String
Library         OperatingSystem
Variables    ../variables/%{ENVIRONMENT}/credentials.py
Variables    ../variables/%{ENVIRONMENT}/url-variable.py

*** Variables ***
${username}             ${AUTH_INSS_API['username']}
${password}             ${AUTH_INSS_API['password']}

*** Test Cases ***
Get the API Token
  Create On Session       APILojinha            ${ENDPOINT_INSS_API}
  ${headers}      Create Dictionary     content-type=application/json
  ${body}         Create Dictionary     username=${username}          password=${password}
  ${resp}         POST On Session        APILojinha     /login
  ...                          data=${body}
  ...                          headers=${headers}
#  ${token}        Get From Dictionary    ${resp.json()["data"]}    token
#  Set Suite Variable    ${TOKEN}

