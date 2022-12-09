*** Setting ***
Documentation    Serviço de Consulta IRT
Library         Collections
Library         RequestsLibrary
Library         JSONLibrary
Library         Collections
Library         String
Library         OperatingSystem
Resource       ../variables/%{ENVIRONMENT}/url-variable.py

*** Variables ***
${username}             ${AUTH_INSS_API['username']}
${password}             ${AUTH_INSS_API['password']}
${idOrigem}             ${PAYLOAD['idOrigem']}
${anoExercicio}         ${PAYLOAD['anoExercicio']}
${perRendimentos}       ${PAYLOAD['perRendimentos']}
${tipoDocAgente}        ${PAYLOAD['tipoDocAgente']}
${numDocAgente}         ${PAYLOAD['numDocAgente']}
${tipoDocBeneficiario}  ${PAYLOAD['tipoDocBeneficiario']}
${numDocBeneficiario}   ${PAYLOAD['numDocBeneficiario']}

*** Keywords ***
Get the API Token
  Create Session       inss-api            ${ENDPOINT_INSS_API}
  ${headers}      Create Dictionary     content-type=application/json
  ${body}         Create Dictionary     username=${username}          password=${password}
  ${response}     POST on Session       inss-api        /login      data=${body}
  ...             data={"username": "externalApi", "password": "f$cE*sRv"}
  ...             headers=${headers}
  Should Be True   '${response.status_code}'=='200' or '${response.status_code}'=='201'
  ${token}        Create List        ${response.headers["Authorization"]}    token
  Set Suite Variable    ${token}


POST a request
   Create Session     inss-api           ${ENDPOINT_INSS_API}
   ${headers}         Create Dictionary   content-type=application/json       token=${token}
   &{payload}=        Create Dictionary
   ...                idOrigem=${idOrigem}
   ...                anoExercicio=${anoExercicio}
   ...                perRendimentos=${perRendimentos}
   ...                tipoDocAgente=${tipoDocAgente}
   ...                numDocAgente=${numDocAgente}
   ...                tipoDocBeneficiario=${tipoDocBeneficiario}
   ...                numDocBeneficiario=${numDocBeneficiario}
   ${response}        POST on Session        inss-api       /api/search/retention-inquiry      data=${payload}
