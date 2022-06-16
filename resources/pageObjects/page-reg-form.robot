*** Setting ***
Library    SeleniumLibrary
#Resource    ./resources/pageObjects/menus.robot
#Resource    ./resources/pageObjects/page-reg-form-resources.robot

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
...    INSTITUIÇÃO PÚBLICA=PUB
...    ORGANISMO INTERNACIONAL=INT
&{OPTION_TIPO_REG_II}
...    Regime Geral=GNAD
...    Regime Geral (Sector Financeiro)=GRFS
...    Regime Simplificado=SIMP

${OPTION_TIPO_GROUP_IRT}
...    A=A
...    B=B
...    C=C
${OPTION_TIPO_TRIB_IAC}
...    NAO=N
...    SIM=Y
${OPTION_TIPO_TRIB_IEC}
...    NAO=N
...    SIM=Y


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

