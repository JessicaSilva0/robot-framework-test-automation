*** Setting ***
Library    SeleniumLibrary
Resource    ./resources/pageObjects/menus.robot
Resource    ./resources/pageObjects/page-IISF.robot


*** Variables ***
${file}                ${path}
${MENU_II}                                   xpath://*[contains(text(), "II")]
${SUBMENU_II_RegimegeralFinanceiro}          xpath://*[contains(text(), "Modelo 1 - Regime Geral (Setor Financeiro)")]
${SUBMENU_II_RegimegeralFinanceiro_ADD}      xpath://*[@id="cmIISFTaxFormTabMenuAdd"]

# Motivo
${TIPO_ORIGEM}                               id=boGroup_motive_origin_asCurrent
${TIPO_CARACTERISTICA}                       id=boGroup_motive_charForm_asCurrent
${TIPO_MOTIVO}                               id=boGroup_motive_motive_asCurrent
${ANO_EXERCICIO}                             id=boGroup_motive_year_asCurrent

# Informações Gerais
${PESQUISAR_NIF}                             id=boGroup_taxpayerDetails_nif_asCurrent_search
${TIPO_RESIDENCIA}                           id=boGroup_taxpayerDetails_taxResidenceIndicator_asCurrent
${TIPO_SOCIEDADE}                            id=boGroup_taxpayerDetails_incorporationOfCompanies_asCurrent
${TIPO_TRIB_SOCIEDADE}                       id=boGroup_taxpayerDetails_taxationRegimeFrGrpOfCompanies_asCurrent
# Informações Gerais - Benefícios Fiscais Abrangidos
${CHECK_CM_IISF_TAXPAY_PRIVAT}               id=boGroup_taxpayerDetails_privateInvestment_asCurrent
${CHECK_CM_IISF_TAXPAY_FULLEX}               id=boGroup_taxpayerDetails_fullExemption_asCurrent
${CHECK_CM_IISF_TAXPAY_PARTIA}               id=boGroup_taxpayerDetails_partialExemption_asCurrent
${CHECK_CM_IISF_TAXPAY_MICRO}                id=boGroup_taxpayerDetails_microSmallAndMedium_asCurrent
${CHECK_CM_IISF_TAXPAY_RATERE}               id=boGroup_taxpayerDetails_rateReduction_asCurrent
${CHECK_CM_IISF_TAXPAY_OTHER}                id=boGroup_taxpayerDetails_other_asCurrent
${CHECK_CM_IISF_TAXPAY_NONE}                 id=boGroup_taxpayerDetails_none_asCurrent
${CM_IISF_TAXPAYE_DETAIL}                    id=boGroup_taxpayerDetails_detailOfOther_asCurrent
${CM_IISF_TAXPAYE_BRIEFDE}                   id=boGroup_taxpayerDetails_briefDescrOfBenefitContent_asCurrent
# Informações Gerais - Anexar Documentos ref. Beneficios
${escolherArquivo_0}                         id=new_uploadFile_fileData_fileName_0
${AdicionarArquivo_btn_0}                    id=fileName_upload_button_0

# Informações Gerais - Anexar Documentos ref. Demonstração de Resultados por Natureza
${escolherArquivo_1}                         id=new_uploadFile_fileData_fileNameIncomeStatement_0
${AdicionarArquivo_btn_1}                    id=fileNameIncomeStatement_upload_button_0

# Informações Gerais - Anexar Documentos ref. Demonstração de Fluxo de Caixa
${escolherArquivo_2}                         id=new_uploadFile_fileData_fileNameFlow_0
${AdicionarArquivo_btn_2}                    id=fileNameFlow_upload_button_0

# Informações Gerais - Anexar Documentos ref. Balanço
${escolherArquivo_3}                         id=new_uploadFile_fileData_fileNameBalance_0
${AdicionarArquivo_btn_3}                    id=fileNameBalance_upload_button_0

# Informações Gerais - Anexar Documentos ref. Balancete de Razão
${escolherArquivo_4}                         id=new_uploadFile_fileData_fileNameBalanceSheet_0
${AdicionarArquivo_btn_4}                    id=fileNameBalanceSheet_upload_button_0

# Informações Gerais - Anexar Documentos ref. Balancete Geral Analítico
${escolherArquivo_5}                         id=new_uploadFile_fileData_fileNameAnalytical_0
${AdicionarArquivo_btn_5}                    id=fileNameAnalytical_upload_button_0

# Informações Gerais - Anexar Documentos ref. Relatório Técnico Assinado pelo Contabilista
${escolherArquivo_6}                         id=new_uploadFile_fileData_fileNameSignedTechnical_0
${AdicionarArquivo_btn_6}                    id=fileNameSignedTechnical_upload_button_0

# Informações Gerais - Anexar Documentos ref. Relatório Técnico Assinado pelo Contabilista
${escolherArquivo_7}                         id=new_uploadFile_fileData_fileNameReintegrationMap_0
${AdicionarArquivo_btn_7}                    id=fileNameReintegrationMap_upload_button_0

# Informações Gerais - Anexar Documentos ref. Outros Documentos
${escolherArquivo_8}                         id=new_uploadFile_fileData_fileNameOtherDocuments_0
${AdicionarArquivo_btn_8}                    id=fileNameOtherDocuments_upload_button_0


# Informações Gerais - Mapas Anexos à Declaração
${CM_IISF_TAXPAY_ANEXOA}                     id=boGroup_taxpayerDetails_annexAResults_asCurrent
${CM_IISF_TAXPAY_ANEXOB}                     id=boGroup_taxpayerDetails_annexBGroupOfCompanies_asCurrent
${CM_IISF_TAXPAY_ANEXOC}                     id=boGroup_taxpayerDetails_annexCComplementary_asCurrent


# Informações Gerais - Identificação do Representante Legal
${REP_LEGAL_PESQUISAR_NIF}                   id=boGroup_taxpayerDetails_legalNif_asCurrent_search

# Informações Gerais - Identificação do Técnico de Contas
${TEC_CONTAS_PESQUISAR_NIF}                  id=boGroup_taxpayerDetails_accountTechnicianNif_asCurrent_search
${CM_IISF_TAXPAYE_TECHNIC}                   id=boGroup_taxpayerDetails_technicianNumberOfBills_asCurrent


# Demonstração de Resultados
${L2.1.1}                                    id=boGroup_resultsReport_investmentsInCentralBanks_asCurrent




*** Keywords ***
Open SubMenu - Modelo 1 - Regime Geral (Sector Financeiro)
    [Arguments]     ${locator}
    click element   ${locator}

Selecionar Item - Regime Geral (Sector Financeiro)
    [Arguments]     ${locator}
    click element   ${locator}

Adicionar nova Declaração
    [Arguments]     ${locator}
    click element   ${locator}

Anexar Documentos
     [Arguments]    ${locator}    ${file}
     choose file    ${locator}    ${file}

Adicionar Documentos
     [Arguments]    ${locator}
     click element  ${locator}

Selecionar NIF - Representante Legal
     click element  ${REP_LEGAL_PESQUISAR_NIF}
     sleep    5

Selecionar NIF - Tecnico de Contas
     click element  ${TEC_CONTAS_PESQUISAR_NIF}
     sleep    5

Documentos a Anexar - Demonstração de Resultados por Natureza
     Anexar Documentos               ${escolherArquivo_1}    ${file}
     Adicionar Documentos            ${AdicionarArquivo_btn_1}

Documentos a Anexar - Beneficios
       Anexar Documentos               ${escolherArquivo_0}    ${file}
       Adicionar Documentos            ${AdicionarArquivo_btn_0}

Documentos a Anexar - Demonstração de Fluxo de Caixa
       Anexar Documentos               ${escolherArquivo_2}    ${file}
       Adicionar Documentos            ${AdicionarArquivo_btn_2}

Documentos a Anexar - Balanço
       Anexar Documentos               ${escolherArquivo_3}    ${file}
       Adicionar Documentos            ${AdicionarArquivo_btn_3}

Documentos a Anexar - Balancete de Razão
       Anexar Documentos               ${escolherArquivo_4}    ${file}
       Adicionar Documentos            ${AdicionarArquivo_btn_4}

Documentos a Anexar - Balancete Geral Analítico
       Anexar Documentos               ${escolherArquivo_5}    ${file}
       Adicionar Documentos            ${AdicionarArquivo_btn_5}

Documentos a Anexar - Relatório Técnico Assinado pelo Contabilista
       Anexar Documentos               ${escolherArquivo_6}    ${file}
       Adicionar Documentos            ${AdicionarArquivo_btn_6}

Documentos a Anexar - Mapa de Reintegrações e Amortizações
       Anexar Documentos               ${escolherArquivo_7}    ${file}
       Adicionar Documentos            ${AdicionarArquivo_btn_7}

Documentos a Anexar - Outros Documentos
       Anexar Documentos               ${escolherArquivo_8}    ${file}
       Adicionar Documentos            ${AdicionarArquivo_btn_8}

Origem da Declaração
     select from list by value         ${TIPO_ORIGEM}             ${CT02['Origem']}
Caracteristica
     select from list by value         ${TIPO_CARACTERISTICA}     ${CT02['Caracteristica']}
Motivo
     select from list by value         ${TIPO_MOTIVO}             ${CT02['Motivo']}
Ano Exercício
     select from list by value         ${ANO_EXERCICIO}           ${CT02['Ano']}

Indicador de Residencia
     select from list by value       ${TIPO_RESIDENCIA}         ${CT02['IndResidencia']}
Incorporação de Sociedades
     select from list by value       ${TIPO_SOCIEDADE}          ${CT02['IndSociedade']}
Regime de Tributação
     select from list by value       ${TIPO_TRIB_SOCIEDADE}     ${CT02['RegTribSociedade']}

Tipo de Benefícios Fiscais Abrangidos
     select checkbox                 ${CHECK_CM_IISF_TAXPAY_PRIVAT}

Retornar para a Declaração
       Switch Window                   Pesquisa a 360 Graus
       Selecionar a Estrutura Principal
       selecionar ui frame

#Section - Demonstracao de Resultados
Inserir valor no Exercício Corrente
     [Arguments]    ${locator}
     input text     ${locator}    99999999.99
     press keys     ${locator}    TAB

Inserir valor no Exercício Anterior
     [Arguments]    ${locator}
     input text     ${locator}    99999999.99
     press keys     ${locator}    TAB

2.1 - Proveitos de Instrumentos Financeiros
      Inserir valor no Exercício Corrente    ${L2.1.1}
      Inserir valor no Exercício Anterior    ${L2.1.1}

Section - Motivo
     Origem da Declaração
     Caracteristica
     Motivo
     Ano Exercício

Section - Informações Gerais
       Abrir pop-up - Pesquisar NIF                   ${PESQUISAR_NIF}
       Retornar para a Declaração
       Indicador de Residencia
       Incorporação de Sociedades
       Regime de Tributação
       Tipo de Benefícios Fiscais Abrangidos
       Documentos a Anexar - Beneficios
       Documentos a Anexar - Demonstração de Resultados por Natureza
       Documentos a Anexar - Demonstração de Fluxo de Caixa
       Documentos a Anexar - Balanço
       Documentos a Anexar - Balancete de Razão
       Documentos a Anexar - Balancete Geral Analítico
       Documentos a Anexar - Relatório Técnico Assinado pelo Contabilista
       Documentos a Anexar - Mapa de Reintegrações e Amortizações
       Documentos a Anexar - Outros Documentos
#Representante Legal
       Selecionar NIF - Representante Legal
       Selecionar NIF - Tecnico de Contas

Section - Demonstração de Resultados
     2.1 - Proveitos de Instrumentos Financeiros