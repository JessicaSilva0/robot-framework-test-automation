*** Setting ***
Library    SeleniumLibrary
Resource    ./resources/pageObjects/menus.robot
Resource    ./resources/pageObjects/page-reg-form-resources.robot

*** Variables ***
${frame_Main}    name:main
${frame_uiMap}   name:uiMap
&{OPTION_TIPO_CONTR}
...    Colectivo=COLLECTIVE
...    Singular=SINGULAR
&{OPTION_TIPO_IND_RESIDEN}
...    Não Residente=NRES
...    Residente=RESD
&{OPTION_TIPO_CONTR_COLL}
...    ASSOCIAÇÃO=ASS
...    EMPRESA=COM
...    INSTITUICAO_PUBLICA=PUB
...    ORGANISMO_INTERNACIONAL=INT
&{OPTION_TIPO_REG_II}
...    RegimeGeral=GNAD
...    Regime Geral (Sector Financeiro)=GRFS
...    Regime Simplificado=SIMP

${OPTION_TIPO_GROUP_IRT}
...    A=A
...    B=B
...    C=C
${OPTION_TIPO_TRIB_IAC}
...    nao=N
...    sim=Y
${OPTION_TIPO_TRIB_IEC}
...    nao=N
...    sim=Y


*** Keywords ***
Abrir Formulario de Cadastro
    [Documentation]    Abrir Registration form
    Open Menu
    Open SubMenu - Formulários                  ${MENU_FORM}
    Selecionar Item - Formulário de Cadastro    ${SUBMENU_FORM}
    Adicionar novo Formulário                   ${SUBMENU_ITEM_ADD}
    wait until element is visible               ${frame_uiMap}
    select frame                                ${frame_uiMap}

Cadastrar NIF Colectivo
    [Documentation]    Cadastrar nif colectivo
    Click nav form - Detalhes de Registo
    Preencher Detalhes de Registo
    Click nav form - Enquadramento em Impostos
    Preencher Enquadramento em Impostos