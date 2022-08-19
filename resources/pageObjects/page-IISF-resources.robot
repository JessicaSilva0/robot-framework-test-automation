*** Setting ***
Library    SeleniumLibrary
Resource    ../resources/pageObjects/menus.robot
Resource    ../resources/pageObjects/page-IISF.robot


*** Variables ***
${frame_uiMap}   name:uiMap
${frame_main}    name:main
${NAME_declaracao}   css=body > span
${MENU_II}                                   xpath://*[contains(text(), "II")]
${SUBMENU_II_RegimegeralFinanceiro}          xpath://*[contains(text(), "Modelo 1 - General Regime (Financial Sector)")]
${SUBMENU_II_RegimegeralFinanceiro_ADD}      xpath://*[@id="cmIISFTaxFormTabMenuAdd"]

# Motivo
${TIPO_ORIGEM}                               id=boGroup_motive_origin_asCurrent
${TIPO_CARACTERISTICA}                       id=boGroup_motive_charForm_asCurrent
${TIPO_MOTIVO}                               id=boGroup_motive_motive_asCurrent

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
${CM_IIRG_DOCUMEN_FILENAM}                   id=new_uploadFile_fileData_fileName_0
# Informações Gerais - Mapas Anexos à Declaração
${CM_IISF_TAXPAY_ANEXOA}                     id=boGroup_taxpayerDetails_annexAResults_asCurrent
${CM_IISF_TAXPAY_ANEXOB}                     id=boGroup_taxpayerDetails_annexBGroupOfCompanies_asCurrent
${CM_IISF_TAXPAY_ANEXOC}                     id=boGroup_taxpayerDetails_annexCComplementary_asCurrent
# Informações Gerais - Identificação do Representante Legal
${REP_LEGAL_PESQUISAR_NIF}                   id=boGroup_taxpayerDetails_legalNif_asCurrent_search

# Informações Gerais - Identificação do Técnico de Contas
${TEC_CONTAS_PESQUISAR_NIF}                  id=boGroup_taxpayerDetails_accountTechnicianNif_asCurrent_search
${CM_IISF_TAXPAYE_TECHNIC}                   id=boGroup_taxpayerDetails_technicianNumberOfBills_asCurrent


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

Selecionar main frame
    [Documentation]    Selecionar a pagina principal
    wait until element is visible               ${frame_main}
    select frame                                ${frame_main}

Selecionar ui frame
    [Documentation]    Selecionar frame da declaração
    wait until element is visible               ${frame_uiMap}
    select frame                                ${frame_uiMap}
    Current Frame Should Contain   Annual Declaration of the General Regime (Financial Sector)
    Capture Page Screenshot

