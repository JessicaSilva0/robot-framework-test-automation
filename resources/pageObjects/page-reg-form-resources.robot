*** Setting ***
Library    SeleniumLibrary
Resource    ./resources/pageObjects/page-reg-form.robot
Resource    ./resources/pageObjects/menus.robot

*** Variables ***
${MENU_FORM}             xpath://*[contains(text(), "Formulários")]                 #Formulários
${SUBMENU_FORM}          xpath://*[contains(text(), "Formulário de Cadastro")]      #Formulários de Cadastro
${SUBMENU_ITEM_ADD}      xpath://*[@id="cmregFormTabMenuAdd"]                   #Formulários de Cadastro - Adicionar
${SUBMENU_ITEM_SEARCH}   id=c1fusqTabMenu               #Formulários de Cadastro - Pesquisar


# Navegação do Formulário
${SHOWALL}                        xpath=//tr[24]/td/a/span
${NAV_FORM_MAIN}                  id=mainNavRow
${NAV_FORM_REG_DETAILS}           id=registrationDetailsNavRow
${NAV_FORM_ENQ_IMPOSTOS}          id=taxFramingSectionNavRow
${NAV_FORM_REP_FISCAL}            id=legalRepresentationNavRow
${NAV_FORM_NON_RES}               id=nonResidentDetailsNavRow
${NAV_FORM_SING_ID_DETAILS}       id=singularTaxpayerIdDetailsNavRow
${NAV_FORM_SING_DETAILS}          id=singularTaxpayerDetailsNavRow
${NAV_FORM_SING_OTHER_DETAILS}    id=otherSingularTaxpayerDetailsNavRow
${NAV_FORM_COLL_ID_DETAILS}       id=collectiveTaxpayerIdDetailsNavRow
${NAV_FORM_COLL_OTHER_DETAILS}    id=otherCollectiveDetailsNavRow
${NAV_FORM_OTHER_INFORM}          id=otherInformationsSectionNavRow
${NAV_FORM_INFO_IVA}              id=ivaInformationsSectionNavRow
${NAV_FORM_INFO_SOCIOS}           id=partnersNavRow
${NAV_FORM_INFO_CONTACT}          id=contactInformationNavRow
${NAV_FORM_INFO_ADDRESS}          id=addressInformationNavRow
${NAV_FORM_ALT_ADDRESS}           id=alternativeAddressInformationNavRow
${NAV_FORM_DATA_ACTIV}            id=activityDataNavRow
${NAV_FORM_ID_AGENCIA}            id=subsidiariesNavRow
${NAV_FORM_DOC_ANEXO}             id=attachedDocNavRow

# Detalhes de Registo
${TIPO_CONTR}                 id=boGroup_registrationDetails_taxpayerType_asCurrent
${TIPO_IND_RESIDEN}           id=boGroup_registrationDetails_nonResidentInfo_asCurrent
${TIPO_CONTR_COLL}            id=boGroup_registrationDetails_collTaxPayerType_asCurrent
${CHECK_absentResident}       id=boGroup_registrationDetails_absentResident_asCurrent
${START_REG_IVA}              id=boGroup_registrationDetails_vatRegimeStart_asCurrent

#Enquadramento em Impostos
${TIPO_REG_II}               id=boGroup_registrationDetails_regimeII_asCurrent
${TIPO_GROUP_IRT}            id=boGroup_registrationDetails_irtGroup_asCurrent
${TIPO_TRIB_IAC}             id=boGroup_registrationDetails_subjectIACTaxation_asCurrent
${TIPO_TRIB_IEC}             id=boGroup_registrationDetails_subjectIECTaxation_asCurrent


# Detalhes de Identificação de Contribuinte Colectivo
# Outros Detalhes de Contribuinte Colectivo
# Outras Informações
# Identificação dos Sócios
# Informação de Contacto
# Informação de endereço
# Informações de endereço alternativas
# Dados de Actividade
# Identificação de Agências


*** Keywords ***
Open SubMenu - Formulários
    [Arguments]     ${locator}
    click element   ${locator}
Selecionar Item - Formulário de Cadastro
    [Arguments]     ${locator}
    click element   ${locator}

Adicionar novo Formulário
    [Arguments]     ${locator}
    click element   ${locator}

Pesquisar Formulários
    [Arguments]     ${locator}
    click element   ${locator}

Click nav form - Show All
    [Documentation]    Clicar em mostrar todos
    click element      ${SHOWALL}

Click nav form - Principal
    [Documentation]    Ir para Section Principal pelo NavForm
    click element      ${NAV_FORM_MAIN}

Click nav form - Detalhes de Registo
    [Documentation]    Ir para Section Detalhes de Registo pelo NavForm
    click element    ${NAV_FORM_REG_DETAILS}

#Click nav form - Enquadramento em Impostos
#    [Documentation]    Ir para Section Detalhes de Registo pelo NavForm
#    click element    ${NAV_FORM_ENQ_IMPOSTOS}

Click nav form - Representação Fiscal
    [Documentation]    Ir para Section Rep Fiscal pelo NavForm
    click element      ${NAV_FORM_REP_FISCAL}

Click nav form - Detalhes para Não Residentes
    [Documentation]    Ir para Section Rep Fiscal pelo NavForm
    click element      ${NAV_FORM_NON_RES}


Click nav form - Detalhes de Identificação de Contribuinte Singular
    [Documentation]    Ir para Section ident contribuinte Singular  pelo NavForm
    click element      ${NAV_FORM_SING_ID_DETAILS}

Click nav form - Detalhes de Identificação de Contribuinte Colectivo
    [Documentation]    Ir para Section ident contribuinte Colectivo  pelo NavForm
    click element   ${NAV_FORM_COLL_ID_DETAILS}

Click nav form - Detalhes de Contribuinte Singular
    [Documentation]    Ir para Section  pelo NavForm
    click element   ${NAV_FORM_SING_DETAILS}

Click nav form - Outros Detalhes do Contribuinte Singular
    [Documentation]    Ir para Section  pelo NavForm
    click element   ${NAV_FORM_SING_OTHER_DETAILS}

Click nav form - Outros Detalhes do Contribuinte Colectivo
    [Documentation]    Ir para Section  pelo NavForm
    click element   ${NAV_FORM_COLL_OTHER_DETAILS}

Click nav form - Outras Informações
    [Documentation]    Ir para Section  pelo NavForm
    click element   ${NAV_FORM_OTHER_INFORM}

Click nav form - Informações de IVA
    [Documentation]    Ir para Section  pelo NavForm
   click element    ${NAV_FORM_INFO_IVA}

Click nav form - Identificação dos Sócios
    [Documentation]    Ir para Section  pelo NavForm
   click element  ${NAV_FORM_INFO_SOCIOS}

Click nav form - Informação de Contacto
    [Documentation]    Ir para Section  pelo NavForm
    click element   ${NAV_FORM_INFO_CONTACT}

Click nav form - Informação de endereço
    [Documentation]    Ir para Section  pelo NavForm
    click element   ${NAV_FORM_INFO_ADDRESS}

Click nav form - Informações de endereço alternativas
    [Documentation]    Ir para Section  pelo NavForm
    click element   ${NAV_FORM_ALT_ADDRESS}

Click nav form - Dados de Actividade
    [Documentation]    Ir para Section pelo NavForm
    click element   ${NAV_FORM_DATA_ACTIV}

Click nav form - Identificação de Agências
    [Documentation]    Ir para Section pelo NavForm
    click element   ${NAV_FORM_ID_AGENCIA}

Click nav form - Documentos Anexados
    [Documentation]    Ir para Section Principal pelo NavForm
    click element       ${NAV_FORM_DOC_ANEXO}

Select frame Page Principal
    [Documentation]    Selecionar a pagina principal
    wait until element is visible               ${frame_Main}
    select frame                                ${frame_Main}

Preencher Detalhes de Registo
     select from list by value         ${TIPO_CONTR}          ${OPTION_TIPO_CONTR.Colectivo}
     select from list by value         ${TIPO_CONTR_COLL}     ${OPTION_TIPO_CONTR_COLL.EMPRESA}
     select from list by value         ${TIPO_IND_RESIDEN}    ${OPTION_TIPO_IND_RESIDEN.Residente}

Preencher Enquadramento em Impostos
    select from list by value          ${TIPO_REG_II}         ${OPTION_TIPO_REG_II.RegimeGeral}
   #select from list by value          ${TIPO_GROUP_IRT}      ${OPTION_TIPO_GROUP_IRT.B}
   # select from list by value          ${TIPO_TRIB_IAC}       ${OPTION_TIPO_TRIB_IAC.nao}
   # select from list by value          ${TIPO_TRIB_IEC}       ${OPTION_TIPO_TRIB_IEC.nao}

Preencher Identificação de Contribuinte Colectivo
