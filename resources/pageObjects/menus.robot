*** Setting ***
Library    SeleniumLibrary

*** Variables ***
#locations menu
${MENU_BTN_HOMEPAGE}     id=IM_USER_HOME                #Pagina Principal
${MENU_BTN_MENU}         id=IM_menuButton               #Menu
${MENU_BTN_ADMIN}        id=IM_adminButton              #Admin
${MENU_USER}             id=youAreLoggedInAsSpan        #User Menu
${MENU_BTN_LOGOUT}       id=Sair de sessão              #Sair de sessão

*** Keywords ***
Open Home Page
    click element   ${MENU_BTN_HOMEPAGE}

Open Menu
    wait until element is visible    ${MENU_BTN_MENU}
    click element  ${MENU_BTN_MENU}