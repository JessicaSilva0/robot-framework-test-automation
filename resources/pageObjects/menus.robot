*** Setting ***
Library    SeleniumLibrary

*** Variables ***
#locations menu
${MENU_BTN_HOMEPAGE}     id=IM_USER_HOME                #Pagina Principal
${MENU_BTN_MENU}         id=IM_menuButton               #Menu
${MENU_BTN_ADMIN}        id=IM_adminButton              #Admin
${MENU_FORM}             id=CI_MAINMENU_topMenuItem0x7  #Formulários
${SUBMENU_FORM}          id=CI_FORM_subMenuItem2x3      #Formulários de Cadastro
${SUBMENU_ITEM_ADD}      id=cmregaddTabMenu             #Formulários de Cadastro - Adicionar
${SUBMENU_ITEM_SEARCH}   id=c1fusqTabMenu               #Formulários de Cadastro - Pesquisar


*** Keywords ***
Open Home Page
    click element   ${MENU_BTN_HOMEPAGE}
Open Menu
    click element  ${MENU_BTN_MENU}
Open SubMenu
    [Arguments]     ${locator}
    click element   ${locator}