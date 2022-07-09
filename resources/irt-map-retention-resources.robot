*** Settings ***
Documentation    Documentação da API no Swagger 10.129.105.122:7016/inss-api
Library    RequestsLibrary
Library    Collections
Resource   ../resources/irt-map-retention-resources.robot
Variables  ../variables/%{ENVIRONMENT}/credentials.py
Variables  ../variables/%{ENVIRONMENT}/url-variable.py

*** Variables ***

*** Test Cases ***

Post Request Expect An Error And Evaluate Response
    [Tags]  post
    ${resp}=    POST    ${API_INSS}     expected_status=403
    Should Be Equal As Strings  Forbidden  ${resp.reason}



#Generate token Api INSS
#${headers}  create dictionary    content-type=application/json
#${response} = POST    ${API_INSS_TOKEN}
#...                                 data=${API_INSS_AUTH}
#...                                 headers=${headers}
#${token}    get from dictionary     ${response.json()["data"]}    token
#    set suite variable    ${token}

#Search inss-api
#${headers}    create dictionary    content-type=application/json    token=${token}
#${response} = POST    ${API_INSS}
#...                   data= {}


