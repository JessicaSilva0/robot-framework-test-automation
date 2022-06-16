# SIGT - Test Automation

**Robot Framework** test resources for **SIGT** platform

Comentários

## Estrutura do Repositório

| Folder                                             | Description                                                                              |
|----------------------------------------------------|------------------------------------------------------------------------------------------|
| **[doc](doc)**                                     | Location for test suites and keywords documentation generated with robot framework tools |
| **[customLibrary](customLibrary)**                 | Folder with REST clients WSDL from PSRM                                                  |
| **[resources](resources)**                         | Folder for keywords created on robot                                                     |
| **[resources/pageObjects](resources/pageObjects)** | Folder for Page Objects resources                                                        |
| **[Testcase](Testcase)**                           | Folder for Test Case on Robot Framework                                                  |
| **[variables](variables)**                         | Folder for configure Test Case for different Environments                                |
| **[Results](results)**                             | Folder for Test Execution output location                                                |

And alguns arquivos como credenciais que são adicionadas ao gitgnore

## Guia Rápido

### Requirements

OS Linux

**Software**<br>
- WebDriver (Geckodriver, Chrome...)
- Python 3.8
- Virtual Environment

**Prepare your setup**
- Install and configure the Webdriver(s)
- Create a virtual environment and install the requirements
- Configure the credentials
- Select the environment you want run into test cases

```sh
pip install -r requirements/req.txt
```
select the environment to execute your tests
```
export ENVIRONMENT=preprod
```
Run tests with specfic TAG e.g:
```
robot -i TAGNAME -d Results/robot/page-login-test.robot
```

Structure
