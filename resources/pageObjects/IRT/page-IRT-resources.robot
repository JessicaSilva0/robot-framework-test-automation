*** Setting ***
Library    SeleniumLibrary
Resource    ./resources/pageObjects/menus.robot
Resource    ./resources/pageObjects/IRT/page-IRT.robot


*** Variables ***
${file}                ${path}
${MENU_IRT}                                   xpath://*[contains(text(), "Declaração Anual de IRT")]
${SUBMENU_IRT_GROUP_BC_contab}                xpath://*[contains(text(), "Grupo B e C com Contabilidade Organizada")]

# Motivo
${TIPO_ORIGEM}                               id=boGroup_motive_origin_asCurrent
${ANO_EXERCICIO}                             id=boGroup_taxDetails_year_asCurrent
${TIPO_CARACTERISTICA}                       id=boGroup_motive_charForm_asCurrent
${TIPO_MOTIVO}                               id=boGroup_motive_motiveDaDeclaracao_asCurrent


# Informações Gerais
${PESQUISAR_NIF}                             id=boGroup_taxpayerDetails_nif_asCurrent_search
${TIPO_RESIDENCIA}                           id=boGroup_taxpayerDetails_indicadorDeResidencia_asCurrent

# Informações Gerais - Benefícios Fiscais Abrangidos
${CHECK_CM_IISF_TAXPAY_PRIVAT}               id=boGroup_taxpayerDetails_investimentoPrivado_asCurrent
${CHECK_CM_IISF_TAXPAY_FULLEX}               id=boGroup_taxpayerDetails_benIsencaoTotal_asCurrent
${CHECK_CM_IISF_TAXPAY_PARTIA}               id=boGroup_taxpayerDetails_benIsencaoParcial_asCurrent
${CHECK_CM_IISF_TAXPAY_MPME}                 id=boGroup_taxpayerDetails_benMicroPequenasEMediasEm_asCurrent
${CHECK_CM_IISF_TAXPAY_RATERE}               id=boGroup_taxpayerDetails_benReducaoDeTaxa_asCurrent
${CHECK_CM_IISF_TAXPAY_OTHER}                id=boGroup_taxpayerDetails_outro_asCurrent
${CHECK_CM_IISF_TAXPAY_NONE}                 id=boGroup_taxpayerDetails_nenhum_asCurrent
${CM_IISF_TAXPAYE_DETAIL}                    id=boGroup_taxpayerDetails_detalheDeOutro_asCurrent
${CM_IISF_TAXPAYE_BRIEFDE}                   id=boGroup_taxpayerDetails_breveDescriConteudoBeneficio_asCurrent

# Informações Gerais - Anexar Documentos ref. Beneficios
${escolherArquivo_0}                         id=new_uploadFile_fileData_benFisNomeDoFicheiro_0
${AdicionarArquivo_btn_0}                    id=benFisNomeDoFicheiro_upload_button_0

# Informações Gerais - Anexar Documentos ref. Demonstração de Resultados por Natureza
${escolherArquivo_1}                         id=new_uploadFile_fileData_documentResultNatur_0
${AdicionarArquivo_btn_1}                    id=documentResultNatur_upload_button_0

# Informações Gerais - Anexar Documentos ref. Demonstração de Fluxo de Caixa
${escolherArquivo_2}                         id=new_uploadFile_fileData_documentFluxoDeCaixa_0
${AdicionarArquivo_btn_2}                    id=documentFluxoDeCaixa_upload_button_0

# Informações Gerais - Anexar Documentos ref. Balanço
${escolherArquivo_3}                         id=new_uploadFile_fileData_documntBalanc_0
${AdicionarArquivo_btn_3}                    id=documntBalanc_upload_button_0

# Informações Gerais - Anexar Documentos ref. Balancete de Razão
${escolherArquivo_4}                         id=new_uploadFile_fileData_documntBalanceteDeRazao_0
${AdicionarArquivo_btn_4}                    id=documntBalanceteDeRazao_upload_button_0

# Informações Gerais - Anexar Documentos ref. Balancete Geral Analítico
${escolherArquivo_5}                         id=new_uploadFile_fileData_documentBalanceteGeralAnali_0
${AdicionarArquivo_btn_5}                    id=documentBalanceteGeralAnali_upload_button_0

# Informações Gerais - Anexar Documentos ref. Relatório Técnico Assinado pelo Contabilista
${escolherArquivo_6}                         id=new_uploadFile_fileData_documentRelatorioTecAss_0
${AdicionarArquivo_btn_6}                    id=documentRelatorioTecAss_upload_button_0

# Informações Gerais - Anexar Documentos ref. Outros Documentos
${escolherArquivo_7}                         id=new_uploadFile_fileData_documentOutrosDocument_0
${AdicionarArquivo_btn_7}                    id=documentOutrosDocument_upload_button_0


# Informações Gerais - Mapas Anexos à Declaração
${CM_IISF_TAXPAY_ANEXOA}                     id=boGroup_taxpayerDetails_mapsAnexoA_asCurrent

# Informações Gerais - Identificação do Representante Legal
${REP_LEGAL_PESQUISAR_NIF}                   id=boGroup_taxpayerDetails_identifiRepresentLegal_asCurrent_search

# Informações Gerais - Identificação do Técnico de Contas
${TEC_CONTAS_PESQUISAR_NIF}                  id=boGroup_taxpayerDetails_identiTecnicoContas_asCurrent_search

# Demonstração de Resultados
${L2.1.1}                                    id=boGroup_demonstraDeResultados_venProdExercicioCorrente_asCurrent


*** Keywords ***
Open SubMenu - Declaração Anual de IRT
    [Arguments]     ${locator}
    click element   ${locator}

Selecionar Item - Grupo B e C com Contabilidade Organizada
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

Selecionar NIF - Tecnico de Contas
     click element  ${TEC_CONTAS_PESQUISAR_NIF}


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

Documentos a Anexar - Outros Documentos
       Anexar Documentos               ${escolherArquivo_7}    ${file}
       Adicionar Documentos            ${AdicionarArquivo_btn_7}


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


Tipo de Benefícios Fiscais Abrangidos
     select checkbox                 ${CHECK_CM_IISF_TAXPAY_PRIVAT}

Retornar para a Declaração
       Switch Window                   360 Degree Search
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
       Tipo de Benefícios Fiscais Abrangidos
       Documentos a Anexar - Beneficios
       Documentos a Anexar - Demonstração de Resultados por Natureza
       Documentos a Anexar - Demonstração de Fluxo de Caixa
       Documentos a Anexar - Balanço
       Documentos a Anexar - Balancete de Razão
       Documentos a Anexar - Balancete Geral Analítico
       Documentos a Anexar - Relatório Técnico Assinado pelo Contabilista
       Documentos a Anexar - Outros Documentos
#Representante Legal
       Abrir pop-up - Pesquisar NIF Representante Legal    ${REP_LEGAL_PESQUISAR_NIF}
       Retornar para a Declaração
       Abrir pop-up - Pesquisar NIF Tecnico de Contas      ${TEC_CONTAS_PESQUISAR_NIF}
       Retornar para a Declaração

Section - Demonstração de Resultados
     2.1 - Proveitos de Instrumentos Financeiros