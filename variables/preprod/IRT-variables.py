# Utilizado no TC: IRT-test.robot

NIF_FINANCEIRO = {'NIF': "100909092291"}

NIF_TECNICOdeCONTAS = {'NIF': "5000178578"}

NIF_RepresentanteLegal = {'NIF': "0000002422"}



# Preenche os campos da seção de Informações Gerais

INFORMACOES_GERAIS = {
    'OrigemDeclaracao': ['CONT', 'OFCS'],  # CONT=Contribuinte, OFCS=Oficiosa
    'Caracteristica': ['C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8'],
    'Motivo': ['CONT', 'NOTF'],  # Iniciativa do Contribuinte=CONT, Notificacao=NOTF
    'Ano': ['2020', '2021', '2022'],  # Ano do Exercício
    'IndResidencia': ['RESD', 'NRES'],  # Resident e Não Resident
    'IndSociedade': ['CISA', 'FUSA', 'NAOA'],  # Cisão=CISA, fusao=FUSA, Nao Aplicavel=NAOA
    'RegTribSociedade': ['DAND', 'DNTE', 'NAOA'],  # DAND=Dominada, DNTE=Dominante, Nao Aplicavel=NAOA
}

CT02 = {
    'Origem': "CONT",
    'Caracteristica': "C3",
    'Motivo': "CONT",
    'Ano': "2021",
    'IndResidencia': "RESD",
    'IndSociedade': "NAOA",
    'RegTribSociedade': "NAOA"
}

path = "/home/jessica-silva/Imagens/Screenshot-5.png"

'''
CARACTERISTICA:
...    1_Declaracao_Inicio_1Sem=C1
...    1_Declaracao_Inicio_2Sem=C2
...    Declaracao_do_Period=C3
...    Declaracao_de_Substitution=C4
...    Declaracao_do_Period_de_Cessacao_1Sem=C5
...    Declaracao_do_Period_de_Cessacao_2Sem=C6
...    Declaracao_Oficiosa=C7
...    Declaracao_de_Correcção=C8
'''
