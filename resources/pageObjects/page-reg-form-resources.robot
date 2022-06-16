*** Setting ***
Library    SeleniumLibrary
Resource    ./resources/pageObjects/page-reg-form.robot
Resource    ./resources/pageObjects/menus.robot

*** Variables ***
${MENU_FORM}             id=CI_MAINMENU_topMenuItem0x7  #Formulários
${SUBMENU_FORM}          id=CI_FORM_subMenuItem2x3      #Formulários de Cadastro
${SUBMENU_ITEM_ADD}      id=cmregaddTabMenu             #Formulários de Cadastro - Adicionar
${SUBMENU_ITEM_SEARCH}   id=c1fusqTabMenu               #Formulários de Cadastro - Pesquisar


# Navegação do Formulário
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
Click nav form - Principal
    [Documentation]    Ir para Section Principal pelo NavForm
    click element      ${NAV_FORM_MAIN}

Click nav form - Detalhes de Registo
    [Documentation]    Ir para Section Detalhes de Registo pelo NavForm
    click element    ${NAV_FORM_REG_DETAILS}

Click nav form - Enquadramento em Impostos
    [Documentation]    Ir para Section Detalhes de Registo pelo NavForm
    click element    ${NAV_FORM_ENQ_IMPOSTOS}

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

Abrir Formulario de Cadastro
    Open Menu
    Open SubMenu - Formulários                  ${MENU_FORM}
    Selecionar Item - Formulário de Cadastro    ${SUBMENU_FORM}
    Adicionar novo Formulário                   ${SUBMENU_ITEM_ADD}