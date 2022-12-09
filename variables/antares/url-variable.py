# ------------------------
# ANTARES ENVIRONMENT

# URL Configuration
# ------------------------

SIGT_URL_LOGIN = "https://10.129.105.235:6501/ouaf/loginPage.jsp"


# ------------------------
# API

API_INSS = "http://10.129.105.122:7016/inss-api/api/search/retention-inquiry"
API_INSS_TOKEN = "http://10.129.105.122:7016/inss-api/login"

headers = {
  'Authorization': 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmYWRhQXBpIiwiZXhwIjoxNzQ5ODE5MzA4fQ.vQOTio5riCC59CYnef6Xt780rH-Pgm6pQ4agAqx7iUG-VQOWFmdUS1E7u7nNRtyeF9e-9p8QZtEtZHS7soJKGw',
  'Content-Type': 'application/json',
  'Cookie': 'Cookie_1=value; JSESSIONID=YSCW3abl0xMN8upNzamK2ki7gDfgk_t2EkpRUbUGrKMVVC-5Y1W2!968977061'
}

payload = {
  "anoExercicio": 2021,
  "idOrigem": "01",
  "numDocAgente": "",
  "numDocBeneficiario": "",
  "perRendimentos": "Dezembro",
  "tipoDocAgente": "",
  "tipoDocBeneficiario": "NIF"
}

# ------------------------